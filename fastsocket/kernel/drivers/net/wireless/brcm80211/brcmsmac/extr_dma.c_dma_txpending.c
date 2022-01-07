
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pub {int dummy; } ;
struct dma_info {int txout; int txin; } ;


 int ntxdactive (struct dma_info*,int ,int ) ;

int dma_txpending(struct dma_pub *pub)
{
 struct dma_info *di = (struct dma_info *)pub;
 return ntxdactive(di, di->txin, di->txout);
}
