
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* bytes; } ;
struct CHIPSTATE {TYPE_1__ shadow; } ;


 int TDA9840_DUALA ;
 int TDA9840_DUALB ;
 int TDA9840_MONO ;
 int TDA9840_STEREO ;
 int TDA9840_SW ;




 int chip_write (struct CHIPSTATE*,int,int) ;

__attribute__((used)) static void tda9840_setmode(struct CHIPSTATE *chip, int mode)
{
 int update = 1;
 int t = chip->shadow.bytes[TDA9840_SW + 1] & ~0x7e;

 switch (mode) {
 case 129:
  t |= TDA9840_MONO;
  break;
 case 128:
  t |= TDA9840_STEREO;
  break;
 case 131:
  t |= TDA9840_DUALA;
  break;
 case 130:
  t |= TDA9840_DUALB;
  break;
 default:
  update = 0;
 }

 if (update)
  chip_write(chip, TDA9840_SW, t);
}
