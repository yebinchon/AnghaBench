
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146 {int nr; } ;


 int I2CRead (struct saa7146*,int,int,int) ;
 int I2CWrite (struct saa7146*,int,int,int,int) ;
 int printk (char*,int ,int) ;
 int schedule () ;

__attribute__((used)) static void initialize_cs4341(struct saa7146 *saa)
{
 int i;
 for (i = 0; i < 200; i++) {


  I2CWrite(saa, 0x22, 0x01, 0x11, 2);

  I2CWrite(saa, 0x22, 0x02, 0x49, 2);

  I2CWrite(saa, 0x22, 0x03, 0x00, 2);

  I2CWrite(saa, 0x22, 0x04, 0x00, 2);
  I2CWrite(saa, 0x22, 0x01, 0x10, 2);
  if (I2CRead(saa, 0x22, 0x02, 1) == 0x49)
   break;
  schedule();
 }
 printk("stradis%d: CS4341 initialized (%d)\n", saa->nr, i);
 return;
}
