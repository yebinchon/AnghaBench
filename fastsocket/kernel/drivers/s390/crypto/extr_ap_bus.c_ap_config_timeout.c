
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 int ap_config_time ;
 TYPE_1__ ap_config_timer ;
 int ap_config_work ;
 int ap_work_queue ;
 scalar_t__ jiffies ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void
ap_config_timeout(unsigned long ptr)
{
 queue_work(ap_work_queue, &ap_config_work);
 ap_config_timer.expires = jiffies + ap_config_time * HZ;
 add_timer(&ap_config_timer);
}
