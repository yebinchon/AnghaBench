
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CHIPSTATE {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int tda9874a_AMSEL ;
 int tda9874a_ESP ;
 int tda9874a_GCONR ;
 int tda9874a_NCONR ;
 int tda9874a_SIF ;
 int tda9874a_STD ;
 int tda9874a_mode ;
 int tda9874a_modelist ;
 int tda9874a_setup (struct CHIPSTATE*) ;

__attribute__((used)) static int tda9874a_initialize(struct CHIPSTATE *chip)
{
 if (tda9874a_SIF > 2)
  tda9874a_SIF = 1;
 if (tda9874a_STD >= ARRAY_SIZE(tda9874a_modelist))
  tda9874a_STD = 0;
 if(tda9874a_AMSEL > 1)
  tda9874a_AMSEL = 0;

 if(tda9874a_SIF == 1)
  tda9874a_GCONR = 0xc0;
 else
  tda9874a_GCONR = 0xc1;

 tda9874a_ESP = tda9874a_STD;
 tda9874a_mode = (tda9874a_STD < 5) ? 0 : 1;

 if(tda9874a_AMSEL == 0)
  tda9874a_NCONR = 0x01;
 else
  tda9874a_NCONR = 0x05;

 tda9874a_setup(chip);
 return 0;
}
