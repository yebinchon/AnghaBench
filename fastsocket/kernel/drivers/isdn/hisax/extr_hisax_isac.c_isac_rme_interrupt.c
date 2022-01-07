
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct isac {unsigned char (* read_isac ) (struct isac*,int ) ;int rcvidx; int rcvbuf; int (* write_isac ) (struct isac*,int ,int ) ;} ;


 int DBG (int ,char*,...) ;
 int DBG_IRQ ;
 int DBG_RPACKET ;
 int DBG_SKB (int ,struct sk_buff*) ;
 int DBG_WARN ;
 int D_L1L2 (struct isac*,int,struct sk_buff*) ;
 int GFP_ATOMIC ;
 int INDICATION ;
 int ISAC_CMDR ;
 int ISAC_CMDR_RMC ;
 int ISAC_RBCL ;
 int ISAC_RSTA ;
 unsigned char ISAC_RSTA_CRC ;
 unsigned char ISAC_RSTA_RAB ;
 unsigned char ISAC_RSTA_RDO ;
 int PH_DATA ;
 struct sk_buff* alloc_skb (int,int ) ;
 int isac_empty_fifo (struct isac*,int) ;
 int memcpy (int ,int ,int) ;
 int skb_put (struct sk_buff*,int) ;
 unsigned char stub1 (struct isac*,int ) ;
 int stub2 (struct isac*,int ,int ) ;
 int stub3 (struct isac*,int ) ;

__attribute__((used)) static inline void isac_rme_interrupt(struct isac *isac)
{
 unsigned char val;
 int count;
 struct sk_buff *skb;

 val = isac->read_isac(isac, ISAC_RSTA);
 if ((val & (ISAC_RSTA_RDO | ISAC_RSTA_CRC | ISAC_RSTA_RAB) )
      != ISAC_RSTA_CRC) {
  DBG(DBG_WARN, "RSTA %#x, dropped", val);
  isac->write_isac(isac, ISAC_CMDR, ISAC_CMDR_RMC);
  goto out;
 }

 count = isac->read_isac(isac, ISAC_RBCL) & 0x1f;
 DBG(DBG_IRQ, "RBCL %#x", count);
 if (count == 0)
  count = 0x20;

 isac_empty_fifo(isac, count);
 count = isac->rcvidx;
 if (count < 1) {
  DBG(DBG_WARN, "count %d < 1", count);
  goto out;
 }

 skb = alloc_skb(count, GFP_ATOMIC);
 if (!skb) {
  DBG(DBG_WARN, "no memory, dropping\n");
  goto out;
 }
 memcpy(skb_put(skb, count), isac->rcvbuf, count);
 DBG_SKB(DBG_RPACKET, skb);
 D_L1L2(isac, PH_DATA | INDICATION, skb);
 out:
 isac->rcvidx = 0;
}
