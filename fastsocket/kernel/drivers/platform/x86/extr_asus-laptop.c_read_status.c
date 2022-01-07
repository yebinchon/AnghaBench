
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 int BT_ON ;
 int GPS_ON ;
 int WL_ON ;
 TYPE_1__* hotk ;
 int read_gps_status () ;
 int read_wireless_status (int) ;

__attribute__((used)) static int read_status(int mask)
{

 if (mask == BT_ON || mask == WL_ON)
  return read_wireless_status(mask);
 else if (mask == GPS_ON)
  return read_gps_status();

 return (hotk->status & mask) ? 1 : 0;
}
