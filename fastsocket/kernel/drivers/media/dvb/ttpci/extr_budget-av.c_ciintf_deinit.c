
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7146_dev {int dummy; } ;
struct TYPE_2__ {struct saa7146_dev* dev; } ;
struct budget_av {int ca; TYPE_1__ budget; } ;


 int MASK_27 ;
 int MC1 ;
 int SAA7146_GPIO_INPUT ;
 int dvb_ca_en50221_release (int *) ;
 int saa7146_setgpio (struct saa7146_dev*,int,int ) ;
 int saa7146_write (struct saa7146_dev*,int ,int ) ;

__attribute__((used)) static void ciintf_deinit(struct budget_av *budget_av)
{
 struct saa7146_dev *saa = budget_av->budget.dev;

 saa7146_setgpio(saa, 0, SAA7146_GPIO_INPUT);
 saa7146_setgpio(saa, 1, SAA7146_GPIO_INPUT);
 saa7146_setgpio(saa, 2, SAA7146_GPIO_INPUT);
 saa7146_setgpio(saa, 3, SAA7146_GPIO_INPUT);


 dvb_ca_en50221_release(&budget_av->ca);


 saa7146_write(saa, MC1, MASK_27);
}
