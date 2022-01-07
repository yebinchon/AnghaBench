
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gc {TYPE_1__* pd; } ;
struct TYPE_2__ {int port; } ;


 int GC_N64_CLOCK ;
 int GC_N64_DELAY ;
 int GC_N64_DWS ;
 int GC_N64_LENGTH ;
 int GC_N64_OUT ;
 int GC_N64_POWER_R ;
 int GC_N64_POWER_W ;
 int GC_N64_REQUEST ;
 int GC_N64_REQUEST_LENGTH ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned char parport_read_status (int ) ;
 int parport_write_data (int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static void gc_n64_read_packet(struct gc *gc, unsigned char *data)
{
 int i;
 unsigned long flags;





 local_irq_save(flags);
 for (i = 0; i < GC_N64_REQUEST_LENGTH; i++) {
  parport_write_data(gc->pd->port, GC_N64_POWER_W | ((GC_N64_REQUEST >> i) & 1 ? GC_N64_OUT : 0));
  udelay(GC_N64_DWS);
 }
 local_irq_restore(flags);





 udelay(GC_N64_DELAY);





 for (i = 0; i < GC_N64_LENGTH; i++) {
  parport_write_data(gc->pd->port, GC_N64_POWER_R);
  data[i] = parport_read_status(gc->pd->port);
  parport_write_data(gc->pd->port, GC_N64_POWER_R | GC_N64_CLOCK);
  }






}
