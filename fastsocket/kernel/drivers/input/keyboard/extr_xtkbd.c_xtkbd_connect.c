
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xtkbd {struct input_dev* dev; int * keycode; int phys; struct serio* serio; } ;
struct serio_driver {int dummy; } ;
struct serio {char* phys; int dev; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int vendor; int product; int version; int bustype; } ;
struct input_dev {char* name; int* evbit; int keycodesize; int keybit; int keycodemax; int * keycode; TYPE_2__ dev; TYPE_1__ id; int phys; } ;


 int ARRAY_SIZE (int ) ;
 int BIT_MASK (int ) ;
 int BUS_XTKBD ;
 int ENOMEM ;
 int EV_KEY ;
 int EV_REP ;
 int GFP_KERNEL ;
 int clear_bit (int ,int ) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int kfree (struct xtkbd*) ;
 struct xtkbd* kmalloc (int,int ) ;
 int memcpy (int *,int ,int) ;
 int serio_close (struct serio*) ;
 int serio_open (struct serio*,struct serio_driver*) ;
 int serio_set_drvdata (struct serio*,struct xtkbd*) ;
 int set_bit (int ,int ) ;
 int snprintf (int ,int,char*,char*) ;
 int xtkbd_keycode ;

__attribute__((used)) static int xtkbd_connect(struct serio *serio, struct serio_driver *drv)
{
 struct xtkbd *xtkbd;
 struct input_dev *input_dev;
 int err = -ENOMEM;
 int i;

 xtkbd = kmalloc(sizeof(struct xtkbd), GFP_KERNEL);
 input_dev = input_allocate_device();
 if (!xtkbd || !input_dev)
  goto fail1;

 xtkbd->serio = serio;
 xtkbd->dev = input_dev;
 snprintf(xtkbd->phys, sizeof(xtkbd->phys), "%s/input0", serio->phys);
 memcpy(xtkbd->keycode, xtkbd_keycode, sizeof(xtkbd->keycode));

 input_dev->name = "XT Keyboard";
 input_dev->phys = xtkbd->phys;
 input_dev->id.bustype = BUS_XTKBD;
 input_dev->id.vendor = 0x0001;
 input_dev->id.product = 0x0001;
 input_dev->id.version = 0x0100;
 input_dev->dev.parent = &serio->dev;

 input_dev->evbit[0] = BIT_MASK(EV_KEY) | BIT_MASK(EV_REP);
 input_dev->keycode = xtkbd->keycode;
 input_dev->keycodesize = sizeof(unsigned char);
 input_dev->keycodemax = ARRAY_SIZE(xtkbd_keycode);

 for (i = 0; i < 255; i++)
  set_bit(xtkbd->keycode[i], input_dev->keybit);
 clear_bit(0, input_dev->keybit);

 serio_set_drvdata(serio, xtkbd);

 err = serio_open(serio, drv);
 if (err)
  goto fail2;

 err = input_register_device(xtkbd->dev);
 if (err)
  goto fail3;

 return 0;

 fail3: serio_close(serio);
 fail2: serio_set_drvdata(serio, ((void*)0));
 fail1: input_free_device(input_dev);
 kfree(xtkbd);
 return err;
}
