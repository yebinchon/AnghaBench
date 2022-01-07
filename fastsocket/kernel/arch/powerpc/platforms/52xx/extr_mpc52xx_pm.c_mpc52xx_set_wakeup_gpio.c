
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int wkup_maste; int wkup_itype; int wkup_inten; int wkup_ddr; int wkup_gpioe; } ;


 TYPE_1__* gpiow ;
 int in_8 (int *) ;
 int in_be16 (int *) ;
 int out_8 (int *,int) ;
 int out_be16 (int *,int) ;

int mpc52xx_set_wakeup_gpio(u8 pin, u8 level)
{
 u16 tmp;


 out_8(&gpiow->wkup_gpioe, in_8(&gpiow->wkup_gpioe) | (1 << pin));

 out_8(&gpiow->wkup_ddr, in_8(&gpiow->wkup_ddr) & ~(1 << pin));

 out_8(&gpiow->wkup_inten, in_8(&gpiow->wkup_inten) | (1 << pin));

 tmp = in_be16(&gpiow->wkup_itype);
 tmp &= ~(0x3 << (pin * 2));
 tmp |= (!level + 1) << (pin * 2);
 out_be16(&gpiow->wkup_itype, tmp);

 out_8(&gpiow->wkup_maste, 1);

 return 0;
}
