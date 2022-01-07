
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int bfin_write_DMA1_CONFIG (int) ;
 int bfin_write_DMA2_CONFIG (int) ;
 int bfin_write_EMAC_OPMODE (int) ;

__attribute__((used)) static void bfin_mac_shutdown(struct net_device *dev)
{

 bfin_write_EMAC_OPMODE(0x00000000);

 bfin_write_DMA1_CONFIG(0x0000);
 bfin_write_DMA2_CONFIG(0x0000);
}
