
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plug_handle {int unplug_timer; int unplug_flag; } ;


 int PLUGGED_FLAG ;
 int del_timer (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

int plugger_remove_plug(struct plug_handle *plug)
{
 if (test_and_clear_bit(PLUGGED_FLAG, &plug->unplug_flag)) {
  del_timer(&plug->unplug_timer);
  return 1;
 } else
  return 0;
}
