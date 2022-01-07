
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
 int INDICATION ;
 int ISACSX_CMDRD ;
 int ISACSX_CMDRD_RMC ;
 int ISACSX_RBCLD ;
 int ISACSX_RSTAD ;
 unsigned char ISACSX_RSTAD_CRC ;
 unsigned char ISACSX_RSTAD_RAB ;
 unsigned char ISACSX_RSTAD_RDO ;
 unsigned char ISACSX_RSTAD_VFR ;
 int PH_DATA ;
 struct sk_buff* dev_alloc_skb (int) ;
 int isac_empty_fifo (struct isac*,int) ;
 int memcpy (int ,int ,int) ;
 int skb_put (struct sk_buff*,int) ;
 unsigned char stub1 (struct isac*,int ) ;
 int stub2 (struct isac*,int ,int ) ;
 int stub3 (struct isac*,int ) ;

__attribute__((used)) static inline void isacsx_rme_interrupt(struct isac *isac)
{
 int count;
 struct sk_buff *skb;
 unsigned char val;

 val = isac->read_isac(isac, ISACSX_RSTAD);
 if ((val & (ISACSX_RSTAD_VFR |
      ISACSX_RSTAD_RDO |
      ISACSX_RSTAD_CRC |
      ISACSX_RSTAD_RAB))
     != (ISACSX_RSTAD_VFR | ISACSX_RSTAD_CRC)) {
  DBG(DBG_WARN, "RSTAD %#x, dropped", val);
  isac->write_isac(isac, ISACSX_CMDRD, ISACSX_CMDRD_RMC);
  goto out;
 }

 count = isac->read_isac(isac, ISACSX_RBCLD) & 0x1f;
 DBG(DBG_IRQ, "RBCLD %#x", count);
 if (count == 0)
  count = 0x20;

 isac_empty_fifo(isac, count);

 count = isac->rcvidx - 1;
 if (count < 1) {
  DBG(DBG_WARN, "count %d < 1", count);
  goto out;
 }

 skb = dev_alloc_skb(count);
 if (!skb) {
  DBG(DBG_WARN, "no memory, dropping");
  goto out;
 }
 memcpy(skb_put(skb, count), isac->rcvbuf, count);
 DBG_SKB(DBG_RPACKET, skb);
 D_L1L2(isac, PH_DATA | INDICATION, skb);
 out:
 isac->rcvidx = 0;
}
