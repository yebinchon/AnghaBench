
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CHIPSTATE {int dummy; } ;


 int TDA985x_SAPP ;
 int TDA985x_STP ;
 int V4L2_TUNER_MODE_MONO ;
 int chip_read (struct CHIPSTATE*) ;

__attribute__((used)) static int tda985x_getmode(struct CHIPSTATE *chip)
{
 int mode;

 mode = ((TDA985x_STP | TDA985x_SAPP) &
  chip_read(chip)) >> 4;


 return mode | V4L2_TUNER_MODE_MONO;
}
