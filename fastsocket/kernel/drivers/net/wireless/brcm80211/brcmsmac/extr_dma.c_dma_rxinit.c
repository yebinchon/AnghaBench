
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pub {int dummy; } ;
struct dma_info {int nrxd; int rxdpa; scalar_t__ aligndesc_4k; int rxd64; scalar_t__ rxout; scalar_t__ rxin; int name; int core; } ;
struct dma64desc {int dummy; } ;


 int DMA_RX ;
 int _dma_ddtable_init (struct dma_info*,int ,int ) ;
 int _dma_rxenable (struct dma_info*) ;
 int brcms_dbg_dma (int ,char*,int ) ;
 int memset (int ,char,int) ;

void dma_rxinit(struct dma_pub *pub)
{
 struct dma_info *di = (struct dma_info *)pub;

 brcms_dbg_dma(di->core, "%s:\n", di->name);

 if (di->nrxd == 0)
  return;

 di->rxin = di->rxout = 0;


 memset(di->rxd64, '\0', di->nrxd * sizeof(struct dma64desc));




 if (!di->aligndesc_4k)
  _dma_ddtable_init(di, DMA_RX, di->rxdpa);

 _dma_rxenable(di);

 if (di->aligndesc_4k)
  _dma_ddtable_init(di, DMA_RX, di->rxdpa);
}
