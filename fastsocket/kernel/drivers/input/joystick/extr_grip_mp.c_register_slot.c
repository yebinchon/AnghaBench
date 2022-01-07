
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * parent; } ;
struct TYPE_4__ {int product; int version; int vendor; int bustype; } ;
struct input_dev {int* evbit; int keybit; int close; int open; TYPE_2__ dev; TYPE_1__ id; int name; } ;
struct grip_port {size_t mode; int registered; scalar_t__ dirty; struct input_dev* dev; } ;
struct grip_mp {TYPE_3__* gameport; struct grip_port** port; } ;
struct TYPE_6__ {int dev; } ;


 int BIT_MASK (int ) ;
 int BUS_GAMEPORT ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GAMEPORT_ID_VENDOR_GRAVIS ;
 int** grip_abs ;
 int** grip_btn ;
 int grip_close ;
 int * grip_name ;
 int grip_open ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int,int,int,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct grip_mp*) ;
 int report_slot (struct grip_mp*,int) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int register_slot(int slot, struct grip_mp *grip)
{
 struct grip_port *port = grip->port[slot];
 struct input_dev *input_dev;
 int j, t;
 int err;

 port->dev = input_dev = input_allocate_device();
 if (!input_dev)
  return -ENOMEM;

 input_dev->name = grip_name[port->mode];
 input_dev->id.bustype = BUS_GAMEPORT;
 input_dev->id.vendor = GAMEPORT_ID_VENDOR_GRAVIS;
 input_dev->id.product = 0x0100 + port->mode;
 input_dev->id.version = 0x0100;
 input_dev->dev.parent = &grip->gameport->dev;

 input_set_drvdata(input_dev, grip);

 input_dev->open = grip_open;
 input_dev->close = grip_close;

 input_dev->evbit[0] = BIT_MASK(EV_KEY) | BIT_MASK(EV_ABS);

 for (j = 0; (t = grip_abs[port->mode][j]) >= 0; j++)
  input_set_abs_params(input_dev, t, -1, 1, 0, 0);

 for (j = 0; (t = grip_btn[port->mode][j]) >= 0; j++)
  if (t > 0)
   set_bit(t, input_dev->keybit);

 err = input_register_device(port->dev);
 if (err) {
  input_free_device(port->dev);
  return err;
 }

 port->registered = 1;

 if (port->dirty)
  report_slot(grip, slot);

 return 0;
}
