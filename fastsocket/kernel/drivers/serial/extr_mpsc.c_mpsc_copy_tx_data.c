
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ulong ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_5__ {int dev; scalar_t__ x_char; TYPE_1__* state; } ;
struct mpsc_port_info {int txr_head; scalar_t__ cache_mgmt; TYPE_2__ port; scalar_t__* txb; int txr_tail; } ;
struct circ_buf {size_t tail; int * buf; int head; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;


 int CIRC_CNT (int,int ,int) ;
 scalar_t__ CIRC_CNT_TO_END (int ,size_t,int) ;
 int DMA_BIDIRECTIONAL ;
 int MPSC_TXBE_SIZE ;
 int MPSC_TXR_ENTRIES ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int dma_cache_sync (int ,void*,int,int ) ;
 int flush_dcache_range (scalar_t__,scalar_t__) ;
 int memcpy (scalar_t__*,int *,int) ;
 int min (int,int) ;
 int mpsc_setup_tx_desc (struct mpsc_port_info*,int,int) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 int uart_circ_empty (struct circ_buf*) ;
 int uart_tx_stopped (TYPE_2__*) ;
 int uart_write_wakeup (TYPE_2__*) ;

__attribute__((used)) static void mpsc_copy_tx_data(struct mpsc_port_info *pi)
{
 struct circ_buf *xmit = &pi->port.state->xmit;
 u8 *bp;
 u32 i;


 while (CIRC_CNT(pi->txr_head, pi->txr_tail, MPSC_TXR_ENTRIES)
   < (MPSC_TXR_ENTRIES - 1)) {
  if (pi->port.x_char) {
   bp = pi->txb + (pi->txr_head * MPSC_TXBE_SIZE);
   *bp = pi->port.x_char;
   pi->port.x_char = 0;
   i = 1;
  } else if (!uart_circ_empty(xmit)
    && !uart_tx_stopped(&pi->port)) {
   i = min((u32)MPSC_TXBE_SIZE,
    (u32)uart_circ_chars_pending(xmit));
   i = min(i, (u32)CIRC_CNT_TO_END(xmit->head, xmit->tail,
    UART_XMIT_SIZE));
   bp = pi->txb + (pi->txr_head * MPSC_TXBE_SIZE);
   memcpy(bp, &xmit->buf[xmit->tail], i);
   xmit->tail = (xmit->tail + i) & (UART_XMIT_SIZE - 1);

   if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
    uart_write_wakeup(&pi->port);
  } else {
   return;
  }

  dma_cache_sync(pi->port.dev, (void *)bp, MPSC_TXBE_SIZE,
    DMA_BIDIRECTIONAL);





  mpsc_setup_tx_desc(pi, i, 1);


  pi->txr_head = (pi->txr_head + 1) & (MPSC_TXR_ENTRIES - 1);
 }
}
