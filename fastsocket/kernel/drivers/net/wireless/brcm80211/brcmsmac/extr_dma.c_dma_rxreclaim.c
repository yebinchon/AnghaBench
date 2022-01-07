
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct dma_pub {int dummy; } ;
struct dma_info {int name; int core; } ;


 struct sk_buff* _dma_getnextrxp (struct dma_info*,int) ;
 int brcms_dbg_dma (int ,char*,int ) ;
 int brcmu_pkt_buf_free_skb (struct sk_buff*) ;

void dma_rxreclaim(struct dma_pub *pub)
{
 struct dma_info *di = (struct dma_info *)pub;
 struct sk_buff *p;

 brcms_dbg_dma(di->core, "%s:\n", di->name);

 while ((p = _dma_getnextrxp(di, 1)))
  brcmu_pkt_buf_free_skb(p);
}
