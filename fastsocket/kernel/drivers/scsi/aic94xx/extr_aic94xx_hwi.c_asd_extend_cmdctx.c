
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int max_scbs; TYPE_2__* scb_ext; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {scalar_t__ dma_handle; } ;


 unsigned long ALIGN (unsigned long,int) ;
 int ASD_SCB_SIZE ;
 int CMDCTXBASE ;
 int CTXDOMAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__* asd_alloc_coherent (struct asd_ha_struct*,int,int ) ;
 int asd_printk (char*,int) ;
 int asd_read_reg_dword (struct asd_ha_struct*,int ) ;
 int asd_write_reg_addr (struct asd_ha_struct*,int ,scalar_t__) ;
 int asd_write_reg_dword (struct asd_ha_struct*,int ,int) ;
 int max_cmnds ;

__attribute__((used)) static int asd_extend_cmdctx(struct asd_ha_struct *asd_ha)
{
 dma_addr_t dma_handle;
 unsigned long dma_addr;
 u32 d;
 int size;

 asd_ha->hw_prof.scb_ext = ((void*)0);
 if (max_cmnds <= asd_ha->hw_prof.max_scbs || max_cmnds > 0xFFFF) {
  max_cmnds = asd_ha->hw_prof.max_scbs;
  return 0;
 }

 size = (max_cmnds - asd_ha->hw_prof.max_scbs + 1) * ASD_SCB_SIZE;

 asd_ha->hw_prof.scb_ext = asd_alloc_coherent(asd_ha, size, GFP_KERNEL);
 if (!asd_ha->hw_prof.scb_ext) {
  asd_printk("couldn't allocate memory for %d commands\n",
      max_cmnds);
  max_cmnds = asd_ha->hw_prof.max_scbs;
  return -ENOMEM;
 }
 dma_handle = asd_ha->hw_prof.scb_ext->dma_handle;
 dma_addr = ALIGN((unsigned long) dma_handle, ASD_SCB_SIZE);
 dma_addr -= asd_ha->hw_prof.max_scbs * ASD_SCB_SIZE;
 dma_handle = (dma_addr_t) dma_addr;
 asd_write_reg_addr(asd_ha, CMDCTXBASE, dma_handle);
 d = asd_read_reg_dword(asd_ha, CTXDOMAIN);
 d &= ~1;
 asd_write_reg_dword(asd_ha, CTXDOMAIN, d);

 asd_ha->hw_prof.max_scbs = max_cmnds;

 return 0;
}
