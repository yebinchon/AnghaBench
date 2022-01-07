
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_unregister (int *) ;
 int tsi_eth_driver ;

__attribute__((used)) static void tsi108_ether_exit(void)
{
 platform_driver_unregister(&tsi_eth_driver);
}
