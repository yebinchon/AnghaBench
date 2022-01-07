
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct flexcop_device {int (* write_ibi_reg ) (struct flexcop_device*,int ,TYPE_3__) ;TYPE_3__ (* read_ibi_reg ) (struct flexcop_device*,int ) ;} ;
struct TYPE_9__ {int dma_1start; } ;
struct TYPE_8__ {int dma_0start; } ;
struct TYPE_10__ {int raw; TYPE_2__ dma_0xc; TYPE_1__ dma_0x0; } ;
typedef TYPE_3__ flexcop_ibi_value ;
typedef int flexcop_ibi_register ;
typedef int flexcop_dma_index_t ;
typedef int flexcop_dma_addr_index_t ;


 int EINVAL ;
 int FC_DMA_1 ;
 int FC_DMA_2 ;
 int FC_DMA_SUBADDR_0 ;
 int FC_DMA_SUBADDR_1 ;
 int deb_rdump (char*,int ,int ) ;
 int dma1_000 ;
 int dma1_00c ;
 int dma2_010 ;
 int dma2_01c ;
 int err (char*) ;
 TYPE_3__ stub1 (struct flexcop_device*,int ) ;
 TYPE_3__ stub2 (struct flexcop_device*,int ) ;
 int stub3 (struct flexcop_device*,int ,TYPE_3__) ;
 int stub4 (struct flexcop_device*,int ,TYPE_3__) ;

int flexcop_dma_xfer_control(struct flexcop_device *fc,
  flexcop_dma_index_t dma_idx,
  flexcop_dma_addr_index_t index,
  int onoff)
{
 flexcop_ibi_value v0x0,v0xc;
 flexcop_ibi_register r0x0,r0xc;

 if ((dma_idx & FC_DMA_1) == dma_idx) {
  r0x0 = dma1_000;
  r0xc = dma1_00c;
 } else if ((dma_idx & FC_DMA_2) == dma_idx) {
  r0x0 = dma2_010;
  r0xc = dma2_01c;
 } else {
  err("either transfer DMA1 or DMA2 can be started within one "
   "flexcop_dma_xfer_control call.");
  return -EINVAL;
 }

 v0x0 = fc->read_ibi_reg(fc,r0x0);
 v0xc = fc->read_ibi_reg(fc,r0xc);

 deb_rdump("reg: %03x: %x\n",r0x0,v0x0.raw);
 deb_rdump("reg: %03x: %x\n",r0xc,v0xc.raw);

 if (index & FC_DMA_SUBADDR_0)
  v0x0.dma_0x0.dma_0start = onoff;

 if (index & FC_DMA_SUBADDR_1)
  v0xc.dma_0xc.dma_1start = onoff;

 fc->write_ibi_reg(fc,r0x0,v0x0);
 fc->write_ibi_reg(fc,r0xc,v0xc);

 deb_rdump("reg: %03x: %x\n",r0x0,v0x0.raw);
 deb_rdump("reg: %03x: %x\n",r0xc,v0xc.raw);
 return 0;
}
