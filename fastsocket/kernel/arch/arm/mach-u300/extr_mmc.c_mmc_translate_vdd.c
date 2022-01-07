
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;



__attribute__((used)) static u32 mmc_translate_vdd(struct device *dev, unsigned int voltage)
{
 int v;
 switch (voltage) {
 case 8:
  v = 3;
  break;
 case 9:
 case 10:
 case 11:
 case 12:
 case 13:
 case 14:
 case 15:
  v = 1;
  break;
 case 16:
  v = 1;
  break;
 case 17:
 case 18:
 case 19:
 case 20:
 case 21:
 case 22:
 case 23:
 case 24:
  v = 0;
  break;
 default:
  v = 0;
  break;
 }


 return v << 2;
}
