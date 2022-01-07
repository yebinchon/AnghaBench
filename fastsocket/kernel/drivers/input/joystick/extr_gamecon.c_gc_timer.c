
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc {int timer; scalar_t__* pads; } ;


 size_t GC_DDR ;
 size_t GC_MULTI ;
 size_t GC_MULTI2 ;
 size_t GC_N64 ;
 size_t GC_NES ;
 size_t GC_PSX ;
 scalar_t__ GC_REFRESH_TIME ;
 size_t GC_SNES ;
 size_t GC_SNESMOUSE ;
 int gc_multi_process_packet (struct gc*) ;
 int gc_n64_process_packet (struct gc*) ;
 int gc_nes_process_packet (struct gc*) ;
 int gc_psx_process_packet (struct gc*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void gc_timer(unsigned long private)
{
 struct gc *gc = (void *) private;





 if (gc->pads[GC_N64])
  gc_n64_process_packet(gc);





 if (gc->pads[GC_NES] || gc->pads[GC_SNES] || gc->pads[GC_SNESMOUSE])
  gc_nes_process_packet(gc);





 if (gc->pads[GC_MULTI] || gc->pads[GC_MULTI2])
  gc_multi_process_packet(gc);





 if (gc->pads[GC_PSX] || gc->pads[GC_DDR])
  gc_psx_process_packet(gc);

 mod_timer(&gc->timer, jiffies + GC_REFRESH_TIME);
}
