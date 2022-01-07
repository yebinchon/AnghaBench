
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;
struct slgt_info {int irq_occurred; unsigned int port_count; int bh_requested; int irq_level; int lock; int task; int device_name; int bh_running; scalar_t__ pending_bh; scalar_t__ netcount; TYPE_1__ port; struct slgt_info** port_array; scalar_t__ gpio_present; } ;
typedef int irqreturn_t ;


 unsigned int BIT16 ;
 unsigned int BIT17 ;
 unsigned int BIT8 ;
 int DBGISR (char*) ;
 int GSR ;
 int IOSR ;
 int IOVR ;
 int IRQ_HANDLED ;
 int isr_gpio (struct slgt_info*,unsigned int,unsigned int) ;
 int isr_rdma (struct slgt_info*) ;
 int isr_serial (struct slgt_info*) ;
 int isr_tdma (struct slgt_info*) ;
 int rd_reg32 (struct slgt_info*,int ) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wr_reg32 (struct slgt_info*,int ,unsigned int) ;

__attribute__((used)) static irqreturn_t slgt_interrupt(int dummy, void *dev_id)
{
 struct slgt_info *info = dev_id;
 unsigned int gsr;
 unsigned int i;

 DBGISR(("slgt_interrupt irq=%d entry\n", info->irq_level));

 spin_lock(&info->lock);

 while((gsr = rd_reg32(info, GSR) & 0xffffff00)) {
  DBGISR(("%s gsr=%08x\n", info->device_name, gsr));
  info->irq_occurred = 1;
  for(i=0; i < info->port_count ; i++) {
   if (info->port_array[i] == ((void*)0))
    continue;
   if (gsr & (BIT8 << i))
    isr_serial(info->port_array[i]);
   if (gsr & (BIT16 << (i*2)))
    isr_rdma(info->port_array[i]);
   if (gsr & (BIT17 << (i*2)))
    isr_tdma(info->port_array[i]);
  }
 }

 if (info->gpio_present) {
  unsigned int state;
  unsigned int changed;
  while ((changed = rd_reg32(info, IOSR)) != 0) {
   DBGISR(("%s iosr=%08x\n", info->device_name, changed));

   state = rd_reg32(info, IOVR);

   wr_reg32(info, IOSR, changed);
   for (i=0 ; i < info->port_count ; i++) {
    if (info->port_array[i] != ((void*)0))
     isr_gpio(info->port_array[i], changed, state);
   }
  }
 }

 for(i=0; i < info->port_count ; i++) {
  struct slgt_info *port = info->port_array[i];

  if (port && (port->port.count || port->netcount) &&
      port->pending_bh && !port->bh_running &&
      !port->bh_requested) {
   DBGISR(("%s bh queued\n", port->device_name));
   schedule_work(&port->task);
   port->bh_requested = 1;
  }
 }

 spin_unlock(&info->lock);

 DBGISR(("slgt_interrupt irq=%d exit\n", info->irq_level));
 return IRQ_HANDLED;
}
