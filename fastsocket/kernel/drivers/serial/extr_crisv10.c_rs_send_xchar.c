
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ stopped; scalar_t__ driver_data; } ;
struct e100_serial {char x_char; int line; int * ocmdadr; scalar_t__ uses_dma_out; } ;


 int DEBUG_LOG (int ,char*,char) ;
 int DFLOW (int ) ;
 scalar_t__ IO_EXTRACT (int ,int ,int ) ;
 int IO_STATE (int ,int ,int ) ;
 scalar_t__ IO_STATE_VALUE (int ,int ,int ) ;
 int R_DMA_CH6_CMD ;
 int cmd ;
 int e100_disable_txdma_channel (struct e100_serial*) ;
 int e100_enable_serial_tx_ready_irq (struct e100_serial*) ;
 int hold ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int rs_start (struct tty_struct*) ;

__attribute__((used)) static void rs_send_xchar(struct tty_struct *tty, char ch)
{
 struct e100_serial *info = (struct e100_serial *)tty->driver_data;
 unsigned long flags;
 local_irq_save(flags);
 if (info->uses_dma_out) {

  *info->ocmdadr = IO_STATE(R_DMA_CH6_CMD, cmd, hold);
  while (IO_EXTRACT(R_DMA_CH6_CMD, cmd, *info->ocmdadr) !=
         IO_STATE_VALUE(R_DMA_CH6_CMD, cmd, hold));
  e100_disable_txdma_channel(info);
 }


 if (tty->stopped)
  rs_start(tty);


 DFLOW(DEBUG_LOG(info->line, "rs_send_xchar 0x%02X\n", ch));
 info->x_char = ch;
 e100_enable_serial_tx_ready_irq(info);
 local_irq_restore(flags);
}
