
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct jsm_channel {int ch_r_head; int ch_r_tail; int ch_cached_lsr; int ch_flags; int* ch_rqueue; int* ch_equeue; int ch_c_iflag; int ch_e_head; scalar_t__ ch_rxcount; TYPE_2__* ch_bd; TYPE_1__* ch_neo_uart; int ch_err_overrun; } ;
struct TYPE_4__ {int pci_dev; } ;
struct TYPE_3__ {int txrxburst; int lsr; int rfifo; } ;


 int CH_FIFO_ENABLED ;
 int CH_TX_FIFO_EMPTY ;
 int CH_TX_FIFO_LWM ;
 int EQUEUEMASK ;
 int IGNBRK ;
 int INFO ;
 int READ ;
 int RQUEUEMASK ;
 int RQUEUESIZE ;
 int UART_17158_RX_FIFO_DATA_ERROR ;
 int UART_17158_TX_AND_FIFO_CLR ;
 int UART_LSR_BI ;
 int UART_LSR_DR ;
 int UART_LSR_THRE ;
 int jsm_input (struct jsm_channel*) ;
 int jsm_printk (int ,int ,int *,char*,int,int) ;
 int memcpy_fromio (int*,int *,int) ;
 int memset (int*,int ,int) ;
 int min (int,int) ;
 int readb (int *) ;

__attribute__((used)) static void neo_copy_data_from_uart_to_queue(struct jsm_channel *ch)
{
 int qleft = 0;
 u8 linestatus = 0;
 u8 error_mask = 0;
 int n = 0;
 int total = 0;
 u16 head;
 u16 tail;

 if (!ch)
  return;


 head = ch->ch_r_head & RQUEUEMASK;
 tail = ch->ch_r_tail & RQUEUEMASK;


 linestatus = ch->ch_cached_lsr;
 ch->ch_cached_lsr = 0;


 if ((qleft = tail - head - 1) < 0)
  qleft += RQUEUEMASK + 1;
 if (!(ch->ch_flags & CH_FIFO_ENABLED))
  total = 0;
 else {
  total = readb(&ch->ch_neo_uart->rfifo);
  total -= 3;
 }







 total = min(total, qleft);

 while (total > 0) {




  linestatus = readb(&ch->ch_neo_uart->lsr);






  if (linestatus & UART_17158_RX_FIFO_DATA_ERROR)
   break;


  n = min(((u32) total), (RQUEUESIZE - (u32) head));







  n = min((u32) n, (u32) 12);






  if (linestatus & (UART_LSR_THRE | UART_17158_TX_AND_FIFO_CLR))
   ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);

  linestatus = 0;


  memcpy_fromio(ch->ch_rqueue + head, &ch->ch_neo_uart->txrxburst, n);





  memset(ch->ch_equeue + head, 0, n);


  head = (head + n) & RQUEUEMASK;
  total -= n;
  qleft -= n;
  ch->ch_rxcount += n;
 }





 if (ch->ch_c_iflag & IGNBRK)
  error_mask |= UART_LSR_BI;





 while (1) {





  linestatus |= readb(&ch->ch_neo_uart->lsr);






  if (!(linestatus & UART_LSR_DR)) {
   ch->ch_cached_lsr = linestatus;
   break;
  }


  linestatus &= ~UART_LSR_DR;






  if (linestatus & (UART_LSR_THRE | UART_17158_TX_AND_FIFO_CLR)) {
   linestatus &= ~(UART_LSR_THRE | UART_17158_TX_AND_FIFO_CLR);
   ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
  }




  if (linestatus & error_mask) {
   u8 discard;
   linestatus = 0;
   memcpy_fromio(&discard, &ch->ch_neo_uart->txrxburst, 1);
   continue;
  }
  while (qleft < 1) {
   jsm_printk(READ, INFO, &ch->ch_bd->pci_dev,
    "Queue full, dropping DATA:%x LSR:%x\n",
    ch->ch_rqueue[tail], ch->ch_equeue[tail]);

   ch->ch_r_tail = tail = (tail + 1) & RQUEUEMASK;
   ch->ch_err_overrun++;
   qleft++;
  }

  memcpy_fromio(ch->ch_rqueue + head, &ch->ch_neo_uart->txrxburst, 1);
  ch->ch_equeue[head] = (u8) linestatus;

  jsm_printk(READ, INFO, &ch->ch_bd->pci_dev,
    "DATA/LSR pair: %x %x\n", ch->ch_rqueue[head], ch->ch_equeue[head]);


  linestatus = 0;


  head = (head + 1) & RQUEUEMASK;

  qleft--;
  ch->ch_rxcount++;
 }




 ch->ch_r_head = head & RQUEUEMASK;
 ch->ch_e_head = head & EQUEUEMASK;
 jsm_input(ch);
}
