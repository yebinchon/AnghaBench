
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tx_queue {int index; } ;
struct mv643xx_eth_private {int dummy; } ;


 int TXQ_COMMAND ;
 int rdlp (struct mv643xx_eth_private*,int ) ;
 struct mv643xx_eth_private* txq_to_mp (struct tx_queue*) ;
 int udelay (int) ;
 int wrlp (struct mv643xx_eth_private*,int ,int) ;

__attribute__((used)) static void txq_disable(struct tx_queue *txq)
{
 struct mv643xx_eth_private *mp = txq_to_mp(txq);
 u8 mask = 1 << txq->index;

 wrlp(mp, TXQ_COMMAND, mask << 8);
 while (rdlp(mp, TXQ_COMMAND) & mask)
  udelay(10);
}
