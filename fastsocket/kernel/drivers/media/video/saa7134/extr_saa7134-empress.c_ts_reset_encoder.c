
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {scalar_t__ empress_started; } ;


 int SAA7134_SPECIAL_MODE ;
 int msleep (int) ;
 int saa_writeb (int ,int) ;

__attribute__((used)) static void ts_reset_encoder(struct saa7134_dev* dev)
{
 if (!dev->empress_started)
  return;

 saa_writeb(SAA7134_SPECIAL_MODE, 0x00);
 msleep(10);
 saa_writeb(SAA7134_SPECIAL_MODE, 0x01);
 msleep(100);
 dev->empress_started = 0;
}
