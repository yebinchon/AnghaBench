
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int high; scalar_t__ low; } ;
union DWunion {int ll; TYPE_1__ s; } ;
typedef scalar_t__ u32 ;
typedef int s64 ;



s64 __negdi2(s64 u)
{
 union DWunion w;
 union DWunion uu;

 uu.ll = u;

 w.s.low = -uu.s.low;
 w.s.high = -uu.s.high - ((u32) w.s.low > 0);

 return w.ll;
}
