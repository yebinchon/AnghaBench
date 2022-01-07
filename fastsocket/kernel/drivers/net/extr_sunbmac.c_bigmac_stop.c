
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bigmac {int bregs; } ;


 int bigmac_rx_reset (int ) ;
 int bigmac_tx_reset (int ) ;

__attribute__((used)) static void bigmac_stop(struct bigmac *bp)
{
 bigmac_tx_reset(bp->bregs);
 bigmac_rx_reset(bp->bregs);
}
