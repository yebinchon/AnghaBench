
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int dummy; } ;


 int EBUSY ;
 int EM28XX_R43_AC97BUSY ;
 int em28xx_read_reg (struct em28xx*,int ) ;
 int em28xx_warn (char*) ;
 int msleep (int) ;

__attribute__((used)) static int em28xx_is_ac97_ready(struct em28xx *dev)
{
 int ret, i;


 for (i = 0; i < 10; i++, msleep(5)) {
  ret = em28xx_read_reg(dev, EM28XX_R43_AC97BUSY);
  if (ret < 0)
   return ret;

  if (!(ret & 0x01))
   return 0;
 }

 em28xx_warn("AC97 command still being executed: not handled properly!\n");
 return -EBUSY;
}
