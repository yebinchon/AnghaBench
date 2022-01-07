
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum omap_dma_burst_mode { ____Placeholder_omap_dma_burst_mode } omap_dma_burst_mode ;


 int BUG () ;
 int CSDP (int) ;




 int cpu_class_is_omap2 () ;
 int dma_read (int ) ;
 int dma_write (int,int ) ;

void omap_set_dma_src_burst_mode(int lch, enum omap_dma_burst_mode burst_mode)
{
 unsigned int burst = 0;
 u32 l;

 l = dma_read(CSDP(lch));
 l &= ~(0x03 << 7);

 switch (burst_mode) {
 case 128:
  break;
 case 130:
  if (cpu_class_is_omap2())
   burst = 0x1;
  else
   burst = 0x2;
  break;
 case 129:
  if (cpu_class_is_omap2()) {
   burst = 0x2;
   break;
  }




 case 131:
  if (cpu_class_is_omap2()) {
   burst = 0x3;
   break;
  }



 default:
  BUG();
 }

 l |= (burst << 7);
 dma_write(l, CSDP(lch));
}
