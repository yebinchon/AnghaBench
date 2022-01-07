
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rx_queue {int index; } ;
struct mv643xx_eth_private {int dummy; } ;


 int RXQ_COMMAND ;
 int rdlp (struct mv643xx_eth_private*,int ) ;
 struct mv643xx_eth_private* rxq_to_mp (struct rx_queue*) ;
 int udelay (int) ;
 int wrlp (struct mv643xx_eth_private*,int ,int) ;

__attribute__((used)) static void rxq_disable(struct rx_queue *rxq)
{
 struct mv643xx_eth_private *mp = rxq_to_mp(rxq);
 u8 mask = 1 << rxq->index;

 wrlp(mp, RXQ_COMMAND, mask << 8);
 while (rdlp(mp, RXQ_COMMAND) & mask)
  udelay(10);
}
