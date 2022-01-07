
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct etrax_recv_buffer {int dummy; } ;
struct etrax_dma_descr {scalar_t__ buf; } ;
struct TYPE_8__ {TYPE_3__* tty; } ;
struct TYPE_5__ {int * buf; } ;
struct e100_serial {int* ioport; int tx_ctrl; int flags; TYPE_4__ port; TYPE_1__ xmit; int irq; int line; scalar_t__ tr_running; scalar_t__ uses_dma_out; void** ocmdadr; scalar_t__ uses_dma_in; void** icmdadr; struct etrax_dma_descr* rec_descr; } ;
struct TYPE_7__ {int flags; TYPE_2__* termios; } ;
struct TYPE_6__ {int c_cflag; } ;


 int ASYNC_INITIALIZED ;
 int DEBUG_LOG (int ,char*,int ) ;
 int DFLOW (int ) ;
 int HUPCL ;
 void* IO_STATE (int ,int ,int ) ;
 size_t REG_TR_CTRL ;
 int R_DMA_CH6_CMD ;
 int SERIAL_RECV_DESCRIPTORS ;
 int TTY_IO_ERROR ;
 int cmd ;
 int e100_disable_rx (struct e100_serial*) ;
 int e100_disable_rxdma_irq (struct e100_serial*) ;
 int e100_disable_serial_data_irq (struct e100_serial*) ;
 int e100_disable_serial_tx_ready_irq (struct e100_serial*) ;
 int e100_disable_txdma_irq (struct e100_serial*) ;
 int e100_dtr (struct e100_serial*,int ) ;
 int e100_rts (struct e100_serial*,int ) ;
 int free_page (unsigned long) ;
 int kfree (struct etrax_recv_buffer*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct etrax_recv_buffer* phys_to_virt (scalar_t__) ;
 int printk (char*,int ,int ) ;
 int reset ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void
shutdown(struct e100_serial * info)
{
 unsigned long flags;
 struct etrax_dma_descr *descr = info->rec_descr;
 struct etrax_recv_buffer *buffer;
 int i;



 DFLOW(DEBUG_LOG(info->line, "shutdown %i\n", info->line));
 e100_disable_rx(info);
 info->ioport[REG_TR_CTRL] = (info->tx_ctrl &= ~0x40);


 if (info->uses_dma_in) {
  e100_disable_rxdma_irq(info);
  *info->icmdadr = IO_STATE(R_DMA_CH6_CMD, cmd, reset);
  info->uses_dma_in = 0;
 } else {
  e100_disable_serial_data_irq(info);
 }

 if (info->uses_dma_out) {
  e100_disable_txdma_irq(info);
  info->tr_running = 0;
  *info->ocmdadr = IO_STATE(R_DMA_CH6_CMD, cmd, reset);
  info->uses_dma_out = 0;
 } else {
  e100_disable_serial_tx_ready_irq(info);
  info->tr_running = 0;
 }



 if (!(info->flags & ASYNC_INITIALIZED))
  return;






 local_irq_save(flags);

 if (info->xmit.buf) {
  free_page((unsigned long)info->xmit.buf);
  info->xmit.buf = ((void*)0);
 }

 for (i = 0; i < SERIAL_RECV_DESCRIPTORS; i++)
  if (descr[i].buf) {
   buffer = phys_to_virt(descr[i].buf) - sizeof *buffer;
   kfree(buffer);
   descr[i].buf = 0;
  }

 if (!info->port.tty || (info->port.tty->termios->c_cflag & HUPCL)) {

  e100_dtr(info, 0);
  e100_rts(info, 0);
 }

 if (info->port.tty)
  set_bit(TTY_IO_ERROR, &info->port.tty->flags);

 info->flags &= ~ASYNC_INITIALIZED;
 local_irq_restore(flags);
}
