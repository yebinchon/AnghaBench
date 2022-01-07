
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {int* registers; } ;


 size_t CHANNEL ;
 int CHANNEL_CHAN ;
 size_t POWERCFG ;
 int POWERCFG_DMUTE ;
 int POWERCFG_ENABLE ;
 int POWERCFG_RDSM ;
 size_t SYSCONFIG1 ;
 int SYSCONFIG1_DE ;
 size_t SYSCONFIG2 ;
 int SYSCONFIG2_BAND ;
 int SYSCONFIG2_SPACE ;
 int band ;
 int si470x_set_chan (struct si470x_device*,int) ;
 int si470x_set_register (struct si470x_device*,size_t) ;
 int space ;

int si470x_start(struct si470x_device *radio)
{
 int retval;


 radio->registers[POWERCFG] =
  POWERCFG_DMUTE | POWERCFG_ENABLE | POWERCFG_RDSM;
 retval = si470x_set_register(radio, POWERCFG);
 if (retval < 0)
  goto done;


 radio->registers[SYSCONFIG1] = SYSCONFIG1_DE;
 retval = si470x_set_register(radio, SYSCONFIG1);
 if (retval < 0)
  goto done;


 radio->registers[SYSCONFIG2] =
  (0x3f << 8) |
  ((band << 6) & SYSCONFIG2_BAND) |
  ((space << 4) & SYSCONFIG2_SPACE) |
  15;
 retval = si470x_set_register(radio, SYSCONFIG2);
 if (retval < 0)
  goto done;


 retval = si470x_set_chan(radio,
  radio->registers[CHANNEL] & CHANNEL_CHAN);

done:
 return retval;
}
