
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct resource {scalar_t__ start; scalar_t__ end; int flags; int name; int parent; } ;
struct pci_sriov {TYPE_3__* dev; int total; scalar_t__ pos; } ;
struct TYPE_4__ {int kobj; int parent; } ;
struct pci_dev {int is_virtfn; int bus; TYPE_1__ dev; int physfn; struct resource* resource; int device; int vendor; int devfn; struct pci_sriov* sriov; } ;
struct TYPE_6__ {TYPE_2__* sriov; } ;
struct TYPE_5__ {int lock; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int KOBJ_CHANGE ;
 int PCI_IOV_RESOURCES ;
 int PCI_SRIOV_NUM_BARS ;
 scalar_t__ PCI_SRIOV_VF_DID ;
 int VIRTFN_ID_LEN ;
 int __pci_reset_function (struct pci_dev*) ;
 struct pci_dev* alloc_pci_dev () ;
 int do_div (int,int ) ;
 int kfree_pci_dev (struct pci_dev*) ;
 int kobject_uevent (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_bus_add_device (struct pci_dev*) ;
 int pci_dev_get (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_device_add (struct pci_dev*,int ) ;
 int pci_name (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;
 int pci_remove_bus_device (struct pci_dev*) ;
 int pci_setup_device (struct pci_dev*) ;
 int request_resource (struct resource*,struct resource*) ;
 int resource_size (struct resource*) ;
 int sprintf (char*,char*,int) ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;
 int virtfn_add_bus (int ,int ) ;
 int virtfn_bus (struct pci_dev*,int) ;
 int virtfn_devfn (struct pci_dev*,int) ;
 int virtfn_remove_bus (int ,int ) ;

__attribute__((used)) static int virtfn_add(struct pci_dev *dev, int id, int reset)
{
 int i;
 int rc;
 u64 size;
 char buf[VIRTFN_ID_LEN];
 struct pci_dev *virtfn;
 struct resource *res;
 struct pci_sriov *iov = dev->sriov;

 virtfn = alloc_pci_dev();
 if (!virtfn)
  return -ENOMEM;

 mutex_lock(&iov->dev->sriov->lock);
 virtfn->bus = virtfn_add_bus(dev->bus, virtfn_bus(dev, id));
 if (!virtfn->bus) {
  kfree_pci_dev(virtfn);
  mutex_unlock(&iov->dev->sriov->lock);
  return -ENOMEM;
 }
 virtfn->devfn = virtfn_devfn(dev, id);
 virtfn->vendor = dev->vendor;
 pci_read_config_word(dev, iov->pos + PCI_SRIOV_VF_DID, &virtfn->device);
 pci_setup_device(virtfn);
 virtfn->dev.parent = dev->dev.parent;

 for (i = 0; i < PCI_SRIOV_NUM_BARS; i++) {
  res = dev->resource + PCI_IOV_RESOURCES + i;
  if (!res->parent)
   continue;
  virtfn->resource[i].name = pci_name(virtfn);
  virtfn->resource[i].flags = res->flags;
  size = resource_size(res);
  do_div(size, iov->total);
  virtfn->resource[i].start = res->start + size * id;
  virtfn->resource[i].end = virtfn->resource[i].start + size - 1;
  rc = request_resource(res, &virtfn->resource[i]);
  BUG_ON(rc);
 }

 if (reset)
  __pci_reset_function(virtfn);

 pci_device_add(virtfn, virtfn->bus);
 mutex_unlock(&iov->dev->sriov->lock);

 virtfn->physfn = pci_dev_get(dev);
 virtfn->is_virtfn = 1;

 rc = pci_bus_add_device(virtfn);
 if (rc)
  goto failed1;
 sprintf(buf, "virtfn%u", id);
 rc = sysfs_create_link(&dev->dev.kobj, &virtfn->dev.kobj, buf);
 if (rc)
  goto failed1;
 rc = sysfs_create_link(&virtfn->dev.kobj, &dev->dev.kobj, "physfn");
 if (rc)
  goto failed2;

 kobject_uevent(&virtfn->dev.kobj, KOBJ_CHANGE);

 return 0;

failed2:
 sysfs_remove_link(&dev->dev.kobj, buf);
failed1:
 pci_dev_put(dev);
 mutex_lock(&iov->dev->sriov->lock);
 pci_remove_bus_device(virtfn);
 virtfn_remove_bus(dev->bus, virtfn_bus(dev, id));
 mutex_unlock(&iov->dev->sriov->lock);

 return rc;
}
