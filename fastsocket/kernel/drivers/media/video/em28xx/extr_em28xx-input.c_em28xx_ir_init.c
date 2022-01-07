
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * parent; } ;
struct TYPE_6__ {int version; void* product; void* vendor; int bustype; } ;
struct rc_dev {int allowed_protos; int (* change_protocol ) (struct rc_dev*,int ) ;int driver_name; int * map_name; TYPE_3__ dev; TYPE_1__ input_id; int input_phys; int input_name; int close; int open; struct em28xx_IR* priv; } ;
struct em28xx_IR {int polling; int phys; int name; struct rc_dev* rc; struct em28xx* dev; } ;
struct TYPE_9__ {int * ir_codes; } ;
struct em28xx {char* name; struct em28xx_IR* ir; TYPE_4__ board; TYPE_5__* udev; } ;
struct TYPE_7__ {int idProduct; int idVendor; } ;
struct TYPE_10__ {int dev; TYPE_2__ descriptor; } ;


 int BUS_USB ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MODULE_NAME ;
 int RC_TYPE_NEC ;
 int RC_TYPE_RC5 ;
 int RC_TYPE_UNKNOWN ;
 int em28xx_ir_change_protocol (struct rc_dev*,int ) ;
 int em28xx_ir_start ;
 int em28xx_ir_stop ;
 int kfree (struct em28xx_IR*) ;
 struct em28xx_IR* kzalloc (int,int ) ;
 void* le16_to_cpu (int ) ;
 struct rc_dev* rc_allocate_device () ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int snprintf (int ,int,char*,char*) ;
 int strlcat (int ,char*,int) ;
 int usb_make_path (TYPE_5__*,int ,int) ;

int em28xx_ir_init(struct em28xx *dev)
{
 struct em28xx_IR *ir;
 struct rc_dev *rc;
 int err = -ENOMEM;

 if (dev->board.ir_codes == ((void*)0)) {

  return 0;
 }

 ir = kzalloc(sizeof(*ir), GFP_KERNEL);
 rc = rc_allocate_device();
 if (!ir || !rc)
  goto err_out_free;


 ir->dev = dev;
 dev->ir = ir;
 ir->rc = rc;





 rc->allowed_protos = RC_TYPE_RC5 | RC_TYPE_NEC;
 rc->priv = ir;
 rc->change_protocol = em28xx_ir_change_protocol;
 rc->open = em28xx_ir_start;
 rc->close = em28xx_ir_stop;


 err = em28xx_ir_change_protocol(rc, RC_TYPE_UNKNOWN);
 if (err)
  goto err_out_free;


 ir->polling = 100;


 snprintf(ir->name, sizeof(ir->name), "em28xx IR (%s)",
      dev->name);

 usb_make_path(dev->udev, ir->phys, sizeof(ir->phys));
 strlcat(ir->phys, "/input0", sizeof(ir->phys));

 rc->input_name = ir->name;
 rc->input_phys = ir->phys;
 rc->input_id.bustype = BUS_USB;
 rc->input_id.version = 1;
 rc->input_id.vendor = le16_to_cpu(dev->udev->descriptor.idVendor);
 rc->input_id.product = le16_to_cpu(dev->udev->descriptor.idProduct);
 rc->dev.parent = &dev->udev->dev;
 rc->map_name = dev->board.ir_codes;
 rc->driver_name = MODULE_NAME;


 err = rc_register_device(rc);
 if (err)
  goto err_out_stop;

 return 0;

 err_out_stop:
 dev->ir = ((void*)0);
 err_out_free:
 rc_free_device(rc);
 kfree(ir);
 return err;
}
