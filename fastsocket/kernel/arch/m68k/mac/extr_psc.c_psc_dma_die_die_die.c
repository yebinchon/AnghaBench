
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PSC_CMD_BASE ;
 scalar_t__ PSC_CTL_BASE ;
 int printk (char*) ;
 int psc_write_word (scalar_t__,int) ;

__attribute__((used)) static void psc_dma_die_die_die(void)
{
 int i;

 printk("Killing all PSC DMA channels...");
 for (i = 0 ; i < 9 ; i++) {
  psc_write_word(PSC_CTL_BASE + (i << 4), 0x8800);
  psc_write_word(PSC_CTL_BASE + (i << 4), 0x1000);
  psc_write_word(PSC_CMD_BASE + (i << 5), 0x1100);
  psc_write_word(PSC_CMD_BASE + (i << 5) + 0x10, 0x1100);
 }
 printk("done!\n");
}
