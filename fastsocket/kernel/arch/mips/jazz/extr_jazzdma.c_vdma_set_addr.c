
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ JAZZ_R4030_CHNL_ADDR ;
 int printk (char*,int,long) ;
 int r4030_write_reg32 (scalar_t__,long) ;
 scalar_t__ vdma_debug ;

void vdma_set_addr(int channel, long addr)
{
 if (vdma_debug)
  printk("vdma_set_addr: channel %d, addr %lx\n", channel,
         addr);

 r4030_write_reg32(JAZZ_R4030_CHNL_ADDR + (channel << 5), addr);
}
