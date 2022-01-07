
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct isac {int tx_cnt; int (* write_isac ) (struct isac*,int ,unsigned char) ;int (* write_isac_fifo ) (struct isac*,int *,int) ;TYPE_1__* tx_skb; } ;
struct TYPE_2__ {int len; int * data; } ;


 int BUG_ON (int) ;
 int DBG (int ,char*,int) ;
 int DBG_IRQ ;
 int DBG_PACKET (int ,int *,int) ;
 int DBG_XFIFO ;
 int ISAC_CMDR ;
 unsigned char ISAC_CMDR_XME ;
 unsigned char ISAC_CMDR_XTF ;
 int skb_pull (TYPE_1__*,int) ;
 int stub1 (struct isac*,int *,int) ;
 int stub2 (struct isac*,int ,unsigned char) ;

__attribute__((used)) static void isac_fill_fifo(struct isac *isac)
{



 int count;
 unsigned char cmd;
 u_char *ptr;

 BUG_ON(!isac->tx_skb);

 count = isac->tx_skb->len;
 BUG_ON(count <= 0);

 DBG(DBG_IRQ, "count %d", count);

 if (count > 0x20) {
  count = 0x20;
  cmd = ISAC_CMDR_XTF;
 } else {
  cmd = ISAC_CMDR_XTF | ISAC_CMDR_XME;
 }

 ptr = isac->tx_skb->data;
 skb_pull(isac->tx_skb, count);
 isac->tx_cnt += count;
 DBG_PACKET(DBG_XFIFO, ptr, count);
 isac->write_isac_fifo(isac, ptr, count);
 isac->write_isac(isac, ISAC_CMDR, cmd);
}
