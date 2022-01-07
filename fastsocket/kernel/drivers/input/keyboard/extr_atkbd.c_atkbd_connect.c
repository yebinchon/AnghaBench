
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct serio_driver {int dummy; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_3__ {int type; } ;
struct serio {TYPE_2__ dev; int write; TYPE_1__ id; } ;
struct input_dev {int dummy; } ;
struct atkbd {int translated; int write; int softraw; int set; int id; struct input_dev* dev; scalar_t__ softrepeat; int scroll; int event_mutex; int event_work; int ps2dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;


 int atkbd_activate (struct atkbd*) ;
 int atkbd_attribute_group ;
 int atkbd_enable (struct atkbd*) ;
 int atkbd_event_work ;
 int atkbd_extra ;
 scalar_t__ atkbd_probe (struct atkbd*) ;
 int atkbd_reset_state (struct atkbd*) ;
 int atkbd_scroll ;
 int atkbd_select_set (struct atkbd*,int ,int ) ;
 int atkbd_set ;
 int atkbd_set_device_attrs (struct atkbd*) ;
 int atkbd_set_keycode_table (struct atkbd*) ;
 int atkbd_softraw ;
 scalar_t__ atkbd_softrepeat ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int kfree (struct atkbd*) ;
 struct atkbd* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int ps2_init (int *,struct serio*) ;
 int serio_close (struct serio*) ;
 int serio_open (struct serio*,struct serio_driver*) ;
 int serio_set_drvdata (struct serio*,struct atkbd*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int atkbd_connect(struct serio *serio, struct serio_driver *drv)
{
 struct atkbd *atkbd;
 struct input_dev *dev;
 int err = -ENOMEM;

 atkbd = kzalloc(sizeof(struct atkbd), GFP_KERNEL);
 dev = input_allocate_device();
 if (!atkbd || !dev)
  goto fail1;

 atkbd->dev = dev;
 ps2_init(&atkbd->ps2dev, serio);
 INIT_DELAYED_WORK(&atkbd->event_work, atkbd_event_work);
 mutex_init(&atkbd->event_mutex);

 switch (serio->id.type) {

  case 128:
   atkbd->translated = 1;
  case 129:
   if (serio->write)
    atkbd->write = 1;
   break;
 }

 atkbd->softraw = atkbd_softraw;
 atkbd->softrepeat = atkbd_softrepeat;
 atkbd->scroll = atkbd_scroll;

 if (atkbd->softrepeat)
  atkbd->softraw = 1;

 serio_set_drvdata(serio, atkbd);

 err = serio_open(serio, drv);
 if (err)
  goto fail2;

 if (atkbd->write) {

  if (atkbd_probe(atkbd)) {
   err = -ENODEV;
   goto fail3;
  }

  atkbd->set = atkbd_select_set(atkbd, atkbd_set, atkbd_extra);
  atkbd_reset_state(atkbd);
  atkbd_activate(atkbd);

 } else {
  atkbd->set = 2;
  atkbd->id = 0xab00;
 }

 atkbd_set_keycode_table(atkbd);
 atkbd_set_device_attrs(atkbd);

 err = sysfs_create_group(&serio->dev.kobj, &atkbd_attribute_group);
 if (err)
  goto fail3;

 atkbd_enable(atkbd);

 err = input_register_device(atkbd->dev);
 if (err)
  goto fail4;

 return 0;

 fail4: sysfs_remove_group(&serio->dev.kobj, &atkbd_attribute_group);
 fail3: serio_close(serio);
 fail2: serio_set_drvdata(serio, ((void*)0));
 fail1: input_free_device(dev);
 kfree(atkbd);
 return err;
}
