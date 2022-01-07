
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spaceball {struct input_dev* dev; int phys; } ;
struct serio_driver {int dummy; } ;
struct TYPE_4__ {int id; } ;
struct serio {char* phys; int dev; TYPE_1__ id; } ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_5__ {int product; int version; int vendor; int bustype; } ;
struct input_dev {int* evbit; int* keybit; TYPE_3__ dev; TYPE_2__ id; int phys; int name; } ;


 scalar_t__ ABS_RX ;
 scalar_t__ ABS_X ;
 int BIT_MASK (int ) ;
 size_t BIT_WORD (int ) ;
 int BTN_0 ;
 int BTN_1 ;
 int BTN_2 ;
 int BTN_3 ;
 int BTN_4 ;
 int BTN_5 ;
 int BTN_6 ;
 int BTN_7 ;
 int BTN_8 ;
 int BTN_9 ;
 int BTN_A ;
 int BTN_B ;
 int BTN_C ;
 int BTN_MODE ;
 int BUS_RS232 ;
 int ENODEV ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int SERIO_SPACEBALL ;



 int SPACEBALL_MAX_ID ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,scalar_t__,int,int,int,int) ;
 int kfree (struct spaceball*) ;
 struct spaceball* kmalloc (int,int ) ;
 int serio_close (struct serio*) ;
 int serio_open (struct serio*,struct serio_driver*) ;
 int serio_set_drvdata (struct serio*,struct spaceball*) ;
 int snprintf (int ,int,char*,char*) ;
 int * spaceball_names ;

__attribute__((used)) static int spaceball_connect(struct serio *serio, struct serio_driver *drv)
{
 struct spaceball *spaceball;
 struct input_dev *input_dev;
 int err = -ENOMEM;
 int i, id;

 if ((id = serio->id.id) > SPACEBALL_MAX_ID)
  return -ENODEV;

 spaceball = kmalloc(sizeof(struct spaceball), GFP_KERNEL);
 input_dev = input_allocate_device();
 if (!spaceball || !input_dev)
  goto fail1;

 spaceball->dev = input_dev;
 snprintf(spaceball->phys, sizeof(spaceball->phys), "%s/input0", serio->phys);

 input_dev->name = spaceball_names[id];
 input_dev->phys = spaceball->phys;
 input_dev->id.bustype = BUS_RS232;
 input_dev->id.vendor = SERIO_SPACEBALL;
 input_dev->id.product = id;
 input_dev->id.version = 0x0100;
 input_dev->dev.parent = &serio->dev;

 input_dev->evbit[0] = BIT_MASK(EV_KEY) | BIT_MASK(EV_ABS);

 switch (id) {
  case 129:
  case 128:
   input_dev->keybit[BIT_WORD(BTN_0)] |= BIT_MASK(BTN_9);
   input_dev->keybit[BIT_WORD(BTN_A)] |= BIT_MASK(BTN_A) |
    BIT_MASK(BTN_B) | BIT_MASK(BTN_C) |
    BIT_MASK(BTN_MODE);
  default:
   input_dev->keybit[BIT_WORD(BTN_0)] |= BIT_MASK(BTN_2) |
    BIT_MASK(BTN_3) | BIT_MASK(BTN_4) |
    BIT_MASK(BTN_5) | BIT_MASK(BTN_6) |
    BIT_MASK(BTN_7) | BIT_MASK(BTN_8);
  case 130:
   input_dev->keybit[BIT_WORD(BTN_0)] |= BIT_MASK(BTN_1) |
    BIT_MASK(BTN_8);
 }

 for (i = 0; i < 3; i++) {
  input_set_abs_params(input_dev, ABS_X + i, -8000, 8000, 8, 40);
  input_set_abs_params(input_dev, ABS_RX + i, -1600, 1600, 2, 8);
 }

 serio_set_drvdata(serio, spaceball);

 err = serio_open(serio, drv);
 if (err)
  goto fail2;

 err = input_register_device(spaceball->dev);
 if (err)
  goto fail3;

 return 0;

 fail3: serio_close(serio);
 fail2: serio_set_drvdata(serio, ((void*)0));
 fail1: input_free_device(input_dev);
 kfree(spaceball);
 return err;
}
