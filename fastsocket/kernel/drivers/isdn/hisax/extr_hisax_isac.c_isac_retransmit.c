
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {scalar_t__ tx_cnt; int tx_skb; } ;


 int DBG (int ,char*) ;
 int DBG_WARN ;
 int skb_push (int ,scalar_t__) ;

__attribute__((used)) static void isac_retransmit(struct isac *isac)
{
 if (!isac->tx_skb) {
  DBG(DBG_WARN, "no skb");
  return;
 }
 skb_push(isac->tx_skb, isac->tx_cnt);
 isac->tx_cnt = 0;
}
