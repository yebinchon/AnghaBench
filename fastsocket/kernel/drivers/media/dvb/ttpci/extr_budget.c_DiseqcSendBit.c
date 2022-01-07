
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_dev {int dummy; } ;
struct budget {struct saa7146_dev* dev; } ;


 int SAA7146_GPIO_OUTHI ;
 int SAA7146_GPIO_OUTLO ;
 int dprintk (int,char*,struct budget*) ;
 int saa7146_setgpio (struct saa7146_dev*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void DiseqcSendBit (struct budget *budget, int data)
{
 struct saa7146_dev *dev=budget->dev;
 dprintk(2, "budget: %p\n", budget);

 saa7146_setgpio(dev, 3, SAA7146_GPIO_OUTHI);
 udelay(data ? 500 : 1000);
 saa7146_setgpio(dev, 3, SAA7146_GPIO_OUTLO);
 udelay(data ? 1000 : 500);
}
