
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct bus_type {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_5__ {scalar_t__ expires; } ;


 size_t EINVAL ;
 int HZ ;
 int add_timer (TYPE_1__*) ;
 int ap_config_time ;
 TYPE_1__ ap_config_timer ;
 scalar_t__ jiffies ;
 int mod_timer (TYPE_1__*,scalar_t__) ;
 int sscanf (char const*,char*,int*) ;
 int timer_pending (TYPE_1__*) ;

__attribute__((used)) static ssize_t ap_config_time_store(struct bus_type *bus,
        const char *buf, size_t count)
{
 int time;

 if (sscanf(buf, "%d\n", &time) != 1 || time < 5 || time > 120)
  return -EINVAL;
 ap_config_time = time;
 if (!timer_pending(&ap_config_timer) ||
     !mod_timer(&ap_config_timer, jiffies + ap_config_time * HZ)) {
  ap_config_timer.expires = jiffies + ap_config_time * HZ;
  add_timer(&ap_config_timer);
 }
 return count;
}
