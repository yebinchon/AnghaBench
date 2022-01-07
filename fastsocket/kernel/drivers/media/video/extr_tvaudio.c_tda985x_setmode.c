
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* bytes; } ;
struct CHIPSTATE {TYPE_1__ shadow; } ;


 int TDA985x_C6 ;
 int TDA985x_MONO ;
 int TDA985x_SAP ;
 int TDA985x_STEREO ;



 int chip_write (struct CHIPSTATE*,int,int) ;

__attribute__((used)) static void tda985x_setmode(struct CHIPSTATE *chip, int mode)
{
 int update = 1;
 int c6 = chip->shadow.bytes[TDA985x_C6+1] & 0x3f;

 switch (mode) {
 case 129:
  c6 |= TDA985x_MONO;
  break;
 case 128:
  c6 |= TDA985x_STEREO;
  break;
 case 130:
  c6 |= TDA985x_SAP;
  break;
 default:
  update = 0;
 }
 if (update)
  chip_write(chip,TDA985x_C6,c6);
}
