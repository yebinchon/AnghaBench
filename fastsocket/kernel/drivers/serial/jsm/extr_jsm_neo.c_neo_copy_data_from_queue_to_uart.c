
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct jsm_channel {size_t ch_w_tail; size_t ch_w_head; int ch_flags; int ch_cached_lsr; int ch_t_tlevel; int uart_port; scalar_t__ ch_txcount; int * ch_wqueue; TYPE_2__* ch_neo_uart; TYPE_1__* ch_bd; } ;
struct TYPE_4__ {int txrxburst; int txrx; int lsr; } ;
struct TYPE_3__ {int pci_dev; } ;


 int CH_BREAK_SENDING ;
 int CH_FIFO_ENABLED ;
 int CH_STOP ;
 int CH_TX_FIFO_EMPTY ;
 int CH_TX_FIFO_LWM ;
 int INFO ;
 int UART_17158_TX_FIFOSIZE ;
 int UART_LSR_THRE ;
 int WQUEUEMASK ;
 int WQUEUESIZE ;
 int WRITE ;
 int jsm_printk (int ,int ,int *,char*,int ) ;
 int jsm_tty_write (int *) ;
 int memcpy_toio (int *,int *,int) ;
 int min (int,int) ;
 int readb (int *) ;
 int uart_write_wakeup (int *) ;
 int writeb (int ,int *) ;

__attribute__((used)) static void neo_copy_data_from_queue_to_uart(struct jsm_channel *ch)
{
 u16 head;
 u16 tail;
 int n;
 int s;
 int qlen;
 u32 len_written = 0;

 if (!ch)
  return;


 if (ch->ch_w_tail == ch->ch_w_head)
  return;


 if ((ch->ch_flags & CH_STOP) || (ch->ch_flags & CH_BREAK_SENDING))
  return;



 if (!(ch->ch_flags & CH_FIFO_ENABLED)) {
  u8 lsrbits = readb(&ch->ch_neo_uart->lsr);

  ch->ch_cached_lsr |= lsrbits;
  if (ch->ch_cached_lsr & UART_LSR_THRE) {
   ch->ch_cached_lsr &= ~(UART_LSR_THRE);

   writeb(ch->ch_wqueue[ch->ch_w_tail], &ch->ch_neo_uart->txrx);
   jsm_printk(WRITE, INFO, &ch->ch_bd->pci_dev,
     "Tx data: %x\n", ch->ch_wqueue[ch->ch_w_head]);
   ch->ch_w_tail++;
   ch->ch_w_tail &= WQUEUEMASK;
   ch->ch_txcount++;
  }
  return;
 }




 if (!(ch->ch_flags & (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM)))
  return;

 n = UART_17158_TX_FIFOSIZE - ch->ch_t_tlevel;


 head = ch->ch_w_head & WQUEUEMASK;
 tail = ch->ch_w_tail & WQUEUEMASK;
 qlen = (head - tail) & WQUEUEMASK;


 n = min(n, qlen);

 while (n > 0) {

  s = ((head >= tail) ? head : WQUEUESIZE) - tail;
  s = min(s, n);

  if (s <= 0)
   break;

  memcpy_toio(&ch->ch_neo_uart->txrxburst, ch->ch_wqueue + tail, s);

  tail = (tail + s) & WQUEUEMASK;
  n -= s;
  ch->ch_txcount += s;
  len_written += s;
 }


 ch->ch_w_tail = tail & WQUEUEMASK;

 if (len_written >= ch->ch_t_tlevel)
  ch->ch_flags &= ~(CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);

 if (!jsm_tty_write(&ch->uart_port))
  uart_write_wakeup(&ch->uart_port);
}
