
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int dm355evm_mmc_gpios ;
 int gpio_request (unsigned int,char*) ;

__attribute__((used)) static void dm355evm_mmcsd_gpios(unsigned gpio)
{
 gpio_request(gpio + 0, "mmc0_ro");
 gpio_request(gpio + 1, "mmc0_cd");
 gpio_request(gpio + 2, "mmc1_ro");
 gpio_request(gpio + 3, "mmc1_cd");





 dm355evm_mmc_gpios = gpio;
}
