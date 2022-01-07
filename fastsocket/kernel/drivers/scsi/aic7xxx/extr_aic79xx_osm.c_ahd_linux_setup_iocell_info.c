
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t u_long ;
typedef int int32_t ;


 int ARRAY_SIZE (int *) ;
 int * aic79xx_iocell_info ;
 scalar_t__ bootverbose ;
 int printf (char*,int,size_t,int) ;

__attribute__((used)) static void
ahd_linux_setup_iocell_info(u_long index, int instance, int targ, int32_t value)
{

 if ((instance >= 0)
  && (instance < ARRAY_SIZE(aic79xx_iocell_info))) {
  uint8_t *iocell_info;

  iocell_info = (uint8_t*)&aic79xx_iocell_info[instance];
  iocell_info[index] = value & 0xFFFF;
  if (bootverbose)
   printf("iocell[%d:%ld] = %d\n", instance, index, value);
 }
}
