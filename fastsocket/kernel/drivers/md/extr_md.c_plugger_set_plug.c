
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plug_handle {int unplug_timer; int unplug_flag; } ;


 int PLUGGED_FLAG ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int test_and_set_bit (int ,int *) ;

void plugger_set_plug(struct plug_handle *plug)
{
 if (!test_and_set_bit(PLUGGED_FLAG, &plug->unplug_flag))
  mod_timer(&plug->unplug_timer, jiffies + msecs_to_jiffies(3)+1);
}
