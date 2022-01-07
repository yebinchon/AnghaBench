
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u8 bps_to_speed_code(u32 bps)
{
 u8 number = 0;

      if (bps >= 512000) number = 8;
 else if (bps >= 256000) number = 7;
 else if (bps >= 64000) number = 6;
 else if (bps >= 38400) number = 5;
 else if (bps >= 19200) number = 4;
 else if (bps >= 9600) number = 3;
 else if (bps >= 4800) number = 2;
 else if (bps >= 2400) number = 1;

 return number;
}
