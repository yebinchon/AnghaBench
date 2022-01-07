
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_register (int *) ;
 int printk (char*) ;
 int tsi_eth_driver ;

__attribute__((used)) static int tsi108_ether_init(void)
{
 int ret;
 ret = platform_driver_register (&tsi_eth_driver);
 if (ret < 0){
  printk("tsi108_ether_init: error initializing ethernet "
         "device\n");
  return ret;
 }
 return 0;
}
