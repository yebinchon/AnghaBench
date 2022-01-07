
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct flexcop_dma {int dma_addr0; int dma_addr1; int size; } ;
struct flexcop_device {int (* write_ibi_reg ) (struct flexcop_device*,int ,TYPE_4__) ;} ;
struct TYPE_13__ {int dma_addr_size; } ;
struct TYPE_12__ {int dma_address1; } ;
struct TYPE_11__ {int dma_address0; } ;
struct TYPE_14__ {TYPE_3__ dma_0x4_write; TYPE_2__ dma_0xc; TYPE_1__ dma_0x0; scalar_t__ raw; } ;
typedef TYPE_4__ flexcop_ibi_value ;
typedef int flexcop_dma_index_t ;


 int EINVAL ;
 int FC_DMA_1 ;
 int FC_DMA_2 ;
 int dma1_000 ;
 int dma1_004 ;
 int dma1_00c ;
 int dma2_010 ;
 int dma2_014 ;
 int dma2_01c ;
 int err (char*) ;
 int stub1 (struct flexcop_device*,int ,TYPE_4__) ;
 int stub2 (struct flexcop_device*,int ,TYPE_4__) ;
 int stub3 (struct flexcop_device*,int ,TYPE_4__) ;
 int stub4 (struct flexcop_device*,int ,TYPE_4__) ;
 int stub5 (struct flexcop_device*,int ,TYPE_4__) ;
 int stub6 (struct flexcop_device*,int ,TYPE_4__) ;

int flexcop_dma_config(struct flexcop_device *fc,
  struct flexcop_dma *dma,
  flexcop_dma_index_t dma_idx)
{
 flexcop_ibi_value v0x0,v0x4,v0xc;
 v0x0.raw = v0x4.raw = v0xc.raw = 0;

 v0x0.dma_0x0.dma_address0 = dma->dma_addr0 >> 2;
 v0xc.dma_0xc.dma_address1 = dma->dma_addr1 >> 2;
 v0x4.dma_0x4_write.dma_addr_size = dma->size / 4;

 if ((dma_idx & FC_DMA_1) == dma_idx) {
  fc->write_ibi_reg(fc,dma1_000,v0x0);
  fc->write_ibi_reg(fc,dma1_004,v0x4);
  fc->write_ibi_reg(fc,dma1_00c,v0xc);
 } else if ((dma_idx & FC_DMA_2) == dma_idx) {
  fc->write_ibi_reg(fc,dma2_010,v0x0);
  fc->write_ibi_reg(fc,dma2_014,v0x4);
  fc->write_ibi_reg(fc,dma2_01c,v0xc);
 } else {
  err("either DMA1 or DMA2 can be configured within one "
   "flexcop_dma_config call.");
  return -EINVAL;
 }

 return 0;
}
