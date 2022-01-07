
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int ap_config_time ;
 int ap_config_timer ;
 int ap_config_work ;
 int ap_work_queue ;
 int flush_work (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int queue_work (int ,int *) ;

void ap_bus_force_rescan(void)
{

 mod_timer(&ap_config_timer, jiffies + ap_config_time * HZ);

 queue_work(ap_work_queue, &ap_config_work);
 flush_work(&ap_config_work);
}
