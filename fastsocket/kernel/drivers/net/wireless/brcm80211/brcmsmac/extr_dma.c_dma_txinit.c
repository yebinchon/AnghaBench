
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dma_pub {int dummy; } ;
struct TYPE_2__ {int txavail; int dmactrlflags; } ;
struct dma_info {int ntxd; int txdpa; scalar_t__ aligndesc_4k; int core; TYPE_1__ dma; int txd64; scalar_t__ txout; scalar_t__ txin; int name; } ;
struct dma64desc {int dummy; } ;


 int D64_XC_PD ;
 int D64_XC_XE ;
 int DMA64TXREGOFFS (struct dma_info*,int ) ;
 int DMA_CTRL_PEN ;
 int DMA_TX ;
 int _dma_ddtable_init (struct dma_info*,int ,int ) ;
 int bcma_set32 (int ,int ,int ) ;
 int brcms_dbg_dma (int ,char*,int ) ;
 int memset (int ,char,int) ;

void dma_txinit(struct dma_pub *pub)
{
 struct dma_info *di = (struct dma_info *)pub;
 u32 control = D64_XC_XE;

 brcms_dbg_dma(di->core, "%s:\n", di->name);

 if (di->ntxd == 0)
  return;

 di->txin = di->txout = 0;
 di->dma.txavail = di->ntxd - 1;


 memset(di->txd64, '\0', (di->ntxd * sizeof(struct dma64desc)));




 if (!di->aligndesc_4k)
  _dma_ddtable_init(di, DMA_TX, di->txdpa);

 if ((di->dma.dmactrlflags & DMA_CTRL_PEN) == 0)
  control |= D64_XC_PD;
 bcma_set32(di->core, DMA64TXREGOFFS(di, control), control);




 if (di->aligndesc_4k)
  _dma_ddtable_init(di, DMA_TX, di->txdpa);
}
