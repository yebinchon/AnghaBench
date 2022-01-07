
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * parent; } ;
struct TYPE_5__ {int version; int product; scalar_t__ vendor; int bustype; } ;
struct rc_dev {int driver_type; unsigned long allowed_protos; char* map_name; int driver_name; int close; int open; struct cx23885_kernel_ir* priv; TYPE_2__ dev; TYPE_1__ input_id; struct cx23885_kernel_ir* input_phys; struct cx23885_kernel_ir* input_name; } ;
struct cx23885_kernel_ir {struct cx23885_kernel_ir* name; struct cx23885_kernel_ir* phys; struct rc_dev* rc; struct cx23885_dev* cx; } ;
struct cx23885_dev {int board; struct cx23885_kernel_ir* kernel_ir; TYPE_3__* pci; int * sd_ir; } ;
typedef enum rc_driver_type { ____Placeholder_rc_driver_type } rc_driver_type ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int dev; int device; scalar_t__ vendor; int subsystem_device; scalar_t__ subsystem_vendor; } ;


 int BUS_PCI ;




 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MODULE_NAME ;
 int RC_DRIVER_IR_RAW ;
 char* RC_MAP_RC5_HAUPPAUGE_NEW ;
 char* RC_MAP_TEVII_NEC ;
 unsigned long RC_TYPE_ALL ;
 TYPE_4__* cx23885_boards ;
 int cx23885_input_ir_close ;
 int cx23885_input_ir_open ;
 int cx23885_input_ir_stop (struct cx23885_dev*) ;
 void* kasprintf (int ,char*,int ) ;
 int kfree (struct cx23885_kernel_ir*) ;
 struct cx23885_kernel_ir* kzalloc (int,int ) ;
 int pci_name (TYPE_3__*) ;
 struct rc_dev* rc_allocate_device () ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;

int cx23885_input_init(struct cx23885_dev *dev)
{
 struct cx23885_kernel_ir *kernel_ir;
 struct rc_dev *rc;
 char *rc_map;
 enum rc_driver_type driver_type;
 unsigned long allowed_protos;

 int ret;





 if (dev->sd_ir == ((void*)0))
  return -ENODEV;

 switch (dev->board) {
 case 129:
 case 130:
 case 131:

  driver_type = RC_DRIVER_IR_RAW;
  allowed_protos = RC_TYPE_ALL;

  rc_map = RC_MAP_RC5_HAUPPAUGE_NEW;
  break;
 case 128:

  driver_type = RC_DRIVER_IR_RAW;
  allowed_protos = RC_TYPE_ALL;

  rc_map = RC_MAP_TEVII_NEC;
  break;
 default:
  return -ENODEV;
 }


 kernel_ir = kzalloc(sizeof(struct cx23885_kernel_ir), GFP_KERNEL);
 if (kernel_ir == ((void*)0))
  return -ENOMEM;

 kernel_ir->cx = dev;
 kernel_ir->name = kasprintf(GFP_KERNEL, "cx23885 IR (%s)",
        cx23885_boards[dev->board].name);
 kernel_ir->phys = kasprintf(GFP_KERNEL, "pci-%s/ir0",
        pci_name(dev->pci));


 rc = rc_allocate_device();
 if (!rc) {
  ret = -ENOMEM;
  goto err_out_free;
 }

 kernel_ir->rc = rc;
 rc->input_name = kernel_ir->name;
 rc->input_phys = kernel_ir->phys;
 rc->input_id.bustype = BUS_PCI;
 rc->input_id.version = 1;
 if (dev->pci->subsystem_vendor) {
  rc->input_id.vendor = dev->pci->subsystem_vendor;
  rc->input_id.product = dev->pci->subsystem_device;
 } else {
  rc->input_id.vendor = dev->pci->vendor;
  rc->input_id.product = dev->pci->device;
 }
 rc->dev.parent = &dev->pci->dev;
 rc->driver_type = driver_type;
 rc->allowed_protos = allowed_protos;
 rc->priv = kernel_ir;
 rc->open = cx23885_input_ir_open;
 rc->close = cx23885_input_ir_close;
 rc->map_name = rc_map;
 rc->driver_name = MODULE_NAME;


 dev->kernel_ir = kernel_ir;
 ret = rc_register_device(rc);
 if (ret)
  goto err_out_stop;

 return 0;

err_out_stop:
 cx23885_input_ir_stop(dev);
 dev->kernel_ir = ((void*)0);
 rc_free_device(rc);
err_out_free:
 kfree(kernel_ir->phys);
 kfree(kernel_ir->name);
 kfree(kernel_ir);
 return ret;
}
