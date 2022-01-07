
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {scalar_t__ driver_type; int dev; int rc_map; int * input_dev; int timer_keyup; } ;


 int IR_dprintk (int,char*) ;
 scalar_t__ RC_DRIVER_IR_RAW ;
 int del_timer_sync (int *) ;
 int device_unregister (int *) ;
 int input_unregister_device (int *) ;
 int ir_free_table (int *) ;
 int ir_raw_event_unregister (struct rc_dev*) ;

void rc_unregister_device(struct rc_dev *dev)
{
 if (!dev)
  return;

 del_timer_sync(&dev->timer_keyup);

 if (dev->driver_type == RC_DRIVER_IR_RAW)
  ir_raw_event_unregister(dev);

 input_unregister_device(dev->input_dev);
 dev->input_dev = ((void*)0);

 ir_free_table(&dev->rc_map);
 IR_dprintk(1, "Freed keycode table\n");

 device_unregister(&dev->dev);
}
