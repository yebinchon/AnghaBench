
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int s8 ;
struct TYPE_2__ {int orient1; int orient2; int (* get_xyz ) (int *,int *,int *) ;scalar_t__ vflag; } ;


 TYPE_1__ ams_info ;
 int stub1 (int *,int *,int *) ;
 int stub2 (int *,int *,int *) ;

void ams_sensors(s8 *x, s8 *y, s8 *z)
{
 u32 orient = ams_info.vflag? ams_info.orient1 : ams_info.orient2;

 if (orient & 0x80)

  ams_info.get_xyz(y, x, z);
 else
  ams_info.get_xyz(x, y, z);

 if (orient & 0x04)
  *z = ~(*z);
 if (orient & 0x02)
  *y = ~(*y);
 if (orient & 0x01)
  *x = ~(*x);
}
