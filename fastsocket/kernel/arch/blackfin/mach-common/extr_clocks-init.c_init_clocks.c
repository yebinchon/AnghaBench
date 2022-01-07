
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_register {scalar_t__ cfg; } ;


 scalar_t__ ANOMALY_05000435 ;
 int CLKBUFOE ;
 int CONFIG_CCLK_ACT_DIV ;
 int CONFIG_MEM_EBIU_DDRQUE ;
 int CONFIG_SCLK_DIV ;
 int IWR_DISABLE_ALL ;
 int IWR_ENABLE (int) ;
 size_t MAX_DMA_CHANNELS ;
 int PLL_CTL ;
 int PLL_CTL_VAL ;
 int SDGCTL_WIDTH ;
 int SRFS ;
 int SRREQ ;
 int VR_CTL ;
 int bfin_read16 (int ) ;
 int bfin_read_EBIU_RSTCTL () ;
 int bfin_read_EBIU_SDGCTL () ;
 int bfin_read_VR_CTL () ;
 int bfin_write16 (int ,int) ;
 int bfin_write_EBIU_DDRCTL0 (int ) ;
 int bfin_write_EBIU_DDRCTL1 (int ) ;
 int bfin_write_EBIU_DDRCTL2 (int ) ;
 int bfin_write_EBIU_DDRQUE (int ) ;
 int bfin_write_EBIU_RSTCTL (int) ;
 int bfin_write_EBIU_SDGCTL (int) ;
 int bfin_write_EBIU_SDRRC (int ) ;
 int bfin_write_PLL_DIV (int) ;
 int bfin_write_PLL_LOCKCNT (int) ;
 int bfin_write_SIC_IWR (int) ;
 int bfin_write_SIC_IWR0 (int) ;
 int bfin_write_SIC_IWR1 (int) ;
 int bfin_write_SIC_IWR2 (int) ;
 struct dma_register** dma_io_base_addr ;
 int do_sync () ;
 int mem_DDRCTL0 ;
 int mem_DDRCTL1 ;
 int mem_DDRCTL2 ;
 int mem_SDGCTL ;
 int mem_SDRRC ;

__attribute__((l1_text))
void init_clocks(void)
{




 size_t i;
 for (i = 0; i < MAX_DMA_CHANNELS; ++i) {
  struct dma_register *dma = dma_io_base_addr[i];
  dma->cfg = 0;
 }

 do_sync();
 bfin_write_SIC_IWR(IWR_ENABLE(0));

 do_sync();
 bfin_write_PLL_LOCKCNT(0x300);
 do_sync();

 bfin_write16(PLL_CTL, PLL_CTL_VAL);
 __asm__ __volatile__("IDLE;");
 bfin_write_PLL_DIV(CONFIG_CCLK_ACT_DIV | CONFIG_SCLK_DIV);




 bfin_write_EBIU_RSTCTL(bfin_read_EBIU_RSTCTL() & ~(SRREQ));
 do_sync();
 bfin_write_EBIU_RSTCTL(bfin_read_EBIU_RSTCTL() | 0x1);
 bfin_write_EBIU_DDRCTL0(mem_DDRCTL0);
 bfin_write_EBIU_DDRCTL1(mem_DDRCTL1);
 bfin_write_EBIU_DDRCTL2(mem_DDRCTL2);




 do_sync();
 bfin_read16(0);
}
