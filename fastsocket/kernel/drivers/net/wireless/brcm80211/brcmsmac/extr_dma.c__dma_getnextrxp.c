
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct dma_info {scalar_t__ nrxd; } ;


 struct sk_buff* dma64_getnextrxp (struct dma_info*,int) ;

__attribute__((used)) static struct sk_buff *_dma_getnextrxp(struct dma_info *di, bool forceall)
{
 if (di->nrxd == 0)
  return ((void*)0);

 return dma64_getnextrxp(di, forceall);
}
