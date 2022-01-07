
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ab3100 {int chip_id; } ;


 int AB3000 ;
 int AB3100 ;
 int ABUNKNOWN ;

u8 ab3100_get_chip_type(struct ab3100 *ab3100)
{
 u8 chip = ABUNKNOWN;

 switch (ab3100->chip_id & 0xf0) {
 case 0xa0:
  chip = AB3000;
  break;
 case 0xc0:
  chip = AB3100;
  break;
 }
 return chip;
}
