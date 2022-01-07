
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

__attribute__((used)) static void Set22K (struct budget *budget, int state)
{
 struct saa7146_dev *dev=budget->dev;
 dprintk(2, "budget: %p\n", budget);
 saa7146_setgpio(dev, 3, (state ? SAA7146_GPIO_OUTHI : SAA7146_GPIO_OUTLO));
}
