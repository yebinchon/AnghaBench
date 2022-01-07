
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {int* registers; } ;


 size_t POWERCFG ;
 int POWERCFG_DISABLE ;
 int POWERCFG_DMUTE ;
 int POWERCFG_ENABLE ;
 size_t SYSCONFIG1 ;
 int SYSCONFIG1_RDS ;
 int si470x_set_register (struct si470x_device*,size_t) ;

int si470x_stop(struct si470x_device *radio)
{
 int retval;


 radio->registers[SYSCONFIG1] &= ~SYSCONFIG1_RDS;
 retval = si470x_set_register(radio, SYSCONFIG1);
 if (retval < 0)
  goto done;


 radio->registers[POWERCFG] &= ~POWERCFG_DMUTE;

 radio->registers[POWERCFG] |= POWERCFG_ENABLE | POWERCFG_DISABLE;
 retval = si470x_set_register(radio, POWERCFG);

done:
 return retval;
}
