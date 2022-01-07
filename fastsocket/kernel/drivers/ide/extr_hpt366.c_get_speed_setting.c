
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct hpt_info {size_t clock; TYPE_1__* timings; } ;
struct TYPE_2__ {int ** clock_table; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__* xfer_speeds ;

__attribute__((used)) static u32 get_speed_setting(u8 speed, struct hpt_info *info)
{
 int i;







 for (i = 0; i < ARRAY_SIZE(xfer_speeds) - 1; i++)
  if (xfer_speeds[i] == speed)
   break;

 return info->timings->clock_table[info->clock][i];
}
