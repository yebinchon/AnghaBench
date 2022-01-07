
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DA850_MMCSD_WP_PIN ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int da850_evm_mmc_get_ro(int index)
{
 return gpio_get_value(DA850_MMCSD_WP_PIN);
}
