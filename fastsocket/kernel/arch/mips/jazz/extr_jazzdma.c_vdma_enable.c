
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ JAZZ_R4030_CHNL_ENABLE ;
 int R4030_ADDR_INTR ;
 int R4030_CHNL_ENABLE ;
 int R4030_MEM_INTR ;
 int R4030_TC_INTR ;
 int printk (char*,int) ;
 int r4030_read_reg32 (scalar_t__) ;
 int r4030_write_reg32 (scalar_t__,int) ;
 scalar_t__ vdma_debug ;

void vdma_enable(int channel)
{
 int status;

 if (vdma_debug)
  printk("vdma_enable: channel %d\n", channel);




 status = r4030_read_reg32(JAZZ_R4030_CHNL_ENABLE + (channel << 5));
 if (status & 0x400)
  printk("VDMA: Channel %d: Address error!\n", channel);
 if (status & 0x200)
  printk("VDMA: Channel %d: Memory error!\n", channel);




 r4030_write_reg32(JAZZ_R4030_CHNL_ENABLE + (channel << 5),
     r4030_read_reg32(JAZZ_R4030_CHNL_ENABLE +
        (channel << 5)) | R4030_TC_INTR
     | R4030_MEM_INTR | R4030_ADDR_INTR);




 r4030_write_reg32(JAZZ_R4030_CHNL_ENABLE + (channel << 5),
     r4030_read_reg32(JAZZ_R4030_CHNL_ENABLE +
        (channel << 5)) |
     R4030_CHNL_ENABLE);
}
