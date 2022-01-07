
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {int dummy; } ;
struct TYPE_2__ {int gpio_rdy; } ;
struct gpiomtd {TYPE_1__ plat; } ;


 int gpio_get_value (int ) ;
 struct gpiomtd* gpio_nand_getpriv (struct mtd_info*) ;

__attribute__((used)) static int gpio_nand_devready(struct mtd_info *mtd)
{
 struct gpiomtd *gpiomtd = gpio_nand_getpriv(mtd);
 return gpio_get_value(gpiomtd->plat.gpio_rdy);
}
