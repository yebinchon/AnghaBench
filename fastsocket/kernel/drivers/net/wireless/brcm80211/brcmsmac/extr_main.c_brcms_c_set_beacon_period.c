
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct brcms_c_info {TYPE_1__* default_bss; } ;
struct TYPE_2__ {scalar_t__ beacon_period; } ;


 int EINVAL ;

int brcms_c_set_beacon_period(struct brcms_c_info *wlc, u16 period)
{
 if (period == 0)
  return -EINVAL;

 wlc->default_bss->beacon_period = period;
 return 0;
}
