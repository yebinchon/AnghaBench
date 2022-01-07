
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int va; int wptr; int pktsz; int memsz; } ;
struct rxf_fifo {TYPE_1__ m; } ;
struct rxf_desc {void* len; void* pa_hi; void* pa_lo; int va_lo; void* info; } ;
struct rxdb {int dummy; } ;
struct rxd_desc {int va_lo; } ;
struct rx_map {int dma; struct sk_buff* skb; } ;
struct bdx_priv {struct rxdb* rxdb; struct rxf_fifo rxf_fifo0; } ;


 void* CPU_CHIP_SWAP32 (int) ;
 int DBG (char*,...) ;
 int ENTER ;
 int H32_64 (int ) ;
 int L32_64 (int ) ;
 int RET () ;
 struct rx_map* bdx_rxdb_addr_elem (struct rxdb*,int ) ;
 int memcpy (int,int,int) ;
 int print_rxfd (struct rxf_desc*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void bdx_recycle_skb(struct bdx_priv *priv, struct rxd_desc *rxdd)
{
 struct rxf_desc *rxfd;
 struct rx_map *dm;
 struct rxf_fifo *f;
 struct rxdb *db;
 struct sk_buff *skb;
 int delta;

 ENTER;
 DBG("priv=%p rxdd=%p\n", priv, rxdd);
 f = &priv->rxf_fifo0;
 db = priv->rxdb;
 DBG("db=%p f=%p\n", db, f);
 dm = bdx_rxdb_addr_elem(db, rxdd->va_lo);
 DBG("dm=%p\n", dm);
 skb = dm->skb;
 rxfd = (struct rxf_desc *)(f->m.va + f->m.wptr);
 rxfd->info = CPU_CHIP_SWAP32(0x10003);
 rxfd->va_lo = rxdd->va_lo;
 rxfd->pa_lo = CPU_CHIP_SWAP32(L32_64(dm->dma));
 rxfd->pa_hi = CPU_CHIP_SWAP32(H32_64(dm->dma));
 rxfd->len = CPU_CHIP_SWAP32(f->m.pktsz);
 print_rxfd(rxfd);

 f->m.wptr += sizeof(struct rxf_desc);
 delta = f->m.wptr - f->m.memsz;
 if (unlikely(delta >= 0)) {
  f->m.wptr = delta;
  if (delta > 0) {
   memcpy(f->m.va, f->m.va + f->m.memsz, delta);
   DBG("wrapped descriptor\n");
  }
 }
 RET();
}
