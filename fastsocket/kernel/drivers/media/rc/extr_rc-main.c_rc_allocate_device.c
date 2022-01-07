
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * class; int * type; } ;
struct TYPE_5__ {int lock; } ;
struct rc_dev {TYPE_4__ dev; int timer_keyup; int keylock; TYPE_1__ rc_map; TYPE_2__* input_dev; } ;
struct TYPE_6__ {int setkeycode; int getkeycode; } ;


 int GFP_KERNEL ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int device_initialize (TYPE_4__*) ;
 TYPE_2__* input_allocate_device () ;
 int input_set_drvdata (TYPE_2__*,struct rc_dev*) ;
 int ir_getkeycode ;
 int ir_input_class ;
 int ir_setkeycode ;
 int ir_timer_keyup ;
 int kfree (struct rc_dev*) ;
 struct rc_dev* kzalloc (int,int ) ;
 int rc_dev_type ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;

struct rc_dev *rc_allocate_device(void)
{
 struct rc_dev *dev;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 dev->input_dev = input_allocate_device();
 if (!dev->input_dev) {
  kfree(dev);
  return ((void*)0);
 }

 dev->input_dev->getkeycode = ir_getkeycode;
 dev->input_dev->setkeycode = ir_setkeycode;
 input_set_drvdata(dev->input_dev, dev);

 spin_lock_init(&dev->rc_map.lock);
 spin_lock_init(&dev->keylock);
 setup_timer(&dev->timer_keyup, ir_timer_keyup, (unsigned long)dev);

 dev->dev.type = &rc_dev_type;
 dev->dev.class = &ir_input_class;
 device_initialize(&dev->dev);

 __module_get(THIS_MODULE);
 return dev;
}
