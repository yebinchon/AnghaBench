
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int IOMUX_TO_GPIO (int ) ;
 int MX31_PIN_NFCE_B ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void qong_nand_select_chip(struct mtd_info *mtd, int chip)
{
 if (chip >= 0)
  gpio_set_value(IOMUX_TO_GPIO(MX31_PIN_NFCE_B), 0);
 else
  gpio_set_value(IOMUX_TO_GPIO(MX31_PIN_NFCE_B), 1);
}
