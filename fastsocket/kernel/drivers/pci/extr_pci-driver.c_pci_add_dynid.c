
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int vendor; unsigned int device; unsigned int subvendor; unsigned int subdevice; unsigned int class; unsigned int class_mask; unsigned long driver_data; } ;
struct pci_dynid {int node; TYPE_1__ id; } ;
struct TYPE_4__ {int lock; int list; } ;
struct pci_driver {int driver; TYPE_2__ dynids; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int driver_attach (int *) ;
 int get_driver (int *) ;
 struct pci_dynid* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int put_driver (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int pci_add_dynid(struct pci_driver *drv,
    unsigned int vendor, unsigned int device,
    unsigned int subvendor, unsigned int subdevice,
    unsigned int class, unsigned int class_mask,
    unsigned long driver_data)
{
 struct pci_dynid *dynid;
 int retval;

 dynid = kzalloc(sizeof(*dynid), GFP_KERNEL);
 if (!dynid)
  return -ENOMEM;

 dynid->id.vendor = vendor;
 dynid->id.device = device;
 dynid->id.subvendor = subvendor;
 dynid->id.subdevice = subdevice;
 dynid->id.class = class;
 dynid->id.class_mask = class_mask;
 dynid->id.driver_data = driver_data;

 spin_lock(&drv->dynids.lock);
 list_add_tail(&dynid->node, &drv->dynids.list);
 spin_unlock(&drv->dynids.lock);

 get_driver(&drv->driver);
 retval = driver_attach(&drv->driver);
 put_driver(&drv->driver);

 return retval;
}
