
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct cx231xx {int dummy; } ;


 int dprintk (int,char*,int) ;
 int getITVCReg (struct cx231xx*,int,int*) ;
 int msleep (int) ;

__attribute__((used)) static int waitForMciComplete(struct cx231xx *dev)
{
 u32 gpio;
 u32 gpio_driection = 0;
 u8 count = 0;
 getITVCReg(dev, gpio_driection, &gpio);

 while (!(gpio&0x020000)) {
  msleep(10);

  getITVCReg(dev, gpio_driection, &gpio);

  if (count++ > 100) {
   dprintk(3, "ERROR: Timeout - gpio=%x\n", gpio);
   return -1;
  }
 }
 return 0;
}
