
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_sriov {TYPE_2__* dev; } ;
struct TYPE_6__ {int kobj; } ;
struct pci_dev {int bus; TYPE_3__ dev; struct pci_sriov* sriov; } ;
struct pci_bus {int dummy; } ;
struct TYPE_5__ {TYPE_1__* sriov; } ;
struct TYPE_4__ {int lock; } ;


 int VIRTFN_ID_LEN ;
 int __pci_reset_function (struct pci_dev*) ;
 int device_release_driver (TYPE_3__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_domain_nr (int ) ;
 struct pci_bus* pci_find_bus (int ,int ) ;
 struct pci_dev* pci_get_slot (struct pci_bus*,int ) ;
 int pci_remove_bus_device (struct pci_dev*) ;
 int sprintf (char*,char*,int) ;
 int sysfs_remove_link (int *,char*) ;
 int virtfn_bus (struct pci_dev*,int) ;
 int virtfn_devfn (struct pci_dev*,int) ;
 int virtfn_remove_bus (int ,int ) ;

__attribute__((used)) static void virtfn_remove(struct pci_dev *dev, int id, int reset)
{
 char buf[VIRTFN_ID_LEN];
 struct pci_bus *bus;
 struct pci_dev *virtfn;
 struct pci_sriov *iov = dev->sriov;

 bus = pci_find_bus(pci_domain_nr(dev->bus), virtfn_bus(dev, id));
 if (!bus)
  return;

 virtfn = pci_get_slot(bus, virtfn_devfn(dev, id));
 if (!virtfn)
  return;

 pci_dev_put(virtfn);

 if (reset) {
  device_release_driver(&virtfn->dev);
  __pci_reset_function(virtfn);
 }

 sprintf(buf, "virtfn%u", id);
 sysfs_remove_link(&dev->dev.kobj, buf);
 sysfs_remove_link(&virtfn->dev.kobj, "physfn");

 mutex_lock(&iov->dev->sriov->lock);
 pci_remove_bus_device(virtfn);
 virtfn_remove_bus(dev->bus, virtfn_bus(dev, id));
 mutex_unlock(&iov->dev->sriov->lock);

 pci_dev_put(dev);
}
