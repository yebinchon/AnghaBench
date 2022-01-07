
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ulong ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct tty_struct {scalar_t__ low_latency; } ;
struct mpsc_rx_desc {int cmdstat; int bytecnt; } ;
struct TYPE_8__ {scalar_t__ rx; int overrun; int frame; int brk; } ;
struct TYPE_9__ {scalar_t__ read_status_mask; scalar_t__ ignore_status_mask; int dev; TYPE_3__ icount; int line; TYPE_2__* state; } ;
struct mpsc_port_info {int rxr_posn; scalar_t__ sdma_base; scalar_t__ cache_mgmt; TYPE_4__ port; scalar_t__ rxr; int * rxb; } ;
struct TYPE_6__ {struct tty_struct* tty; } ;
struct TYPE_7__ {TYPE_1__ port; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int MPSC_RXBE_SIZE ;
 int MPSC_RXRE_SIZE ;
 int MPSC_RXR_ENTRIES ;
 scalar_t__ SDMA_DESC_CMDSTAT_BR ;
 scalar_t__ SDMA_DESC_CMDSTAT_EI ;
 scalar_t__ SDMA_DESC_CMDSTAT_F ;
 scalar_t__ SDMA_DESC_CMDSTAT_FR ;
 scalar_t__ SDMA_DESC_CMDSTAT_L ;
 scalar_t__ SDMA_DESC_CMDSTAT_O ;
 scalar_t__ SDMA_DESC_CMDSTAT_OR ;
 scalar_t__ SDMA_DESC_CMDSTAT_PE ;
 scalar_t__ SDMA_SDCM ;
 int SDMA_SDCM_ERD ;
 char TTY_BREAK ;
 char TTY_FRAME ;
 char TTY_NORMAL ;
 char TTY_OVERRUN ;
 char TTY_PARITY ;
 scalar_t__ be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (scalar_t__) ;
 int dma_cache_sync (int ,void*,int,int ) ;
 int flush_dcache_range (scalar_t__,scalar_t__) ;
 int invalidate_dcache_range (scalar_t__,scalar_t__) ;
 int mpsc_start_rx (struct mpsc_port_info*) ;
 int pr_debug (char*,int ) ;
 int readl (scalar_t__) ;
 scalar_t__ serial_polled ;
 scalar_t__ tty_buffer_request_room (struct tty_struct*,scalar_t__) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,int ,char) ;
 scalar_t__ uart_handle_break (TYPE_4__*) ;
 scalar_t__ uart_handle_sysrq_char (TYPE_4__*,int ) ;
 scalar_t__ unlikely (scalar_t__) ;
 int wmb () ;

__attribute__((used)) static int mpsc_rx_intr(struct mpsc_port_info *pi)
{
 struct mpsc_rx_desc *rxre;
 struct tty_struct *tty = pi->port.state->port.tty;
 u32 cmdstat, bytes_in, i;
 int rc = 0;
 u8 *bp;
 char flag = TTY_NORMAL;

 pr_debug("mpsc_rx_intr[%d]: Handling Rx intr\n", pi->port.line);

 rxre = (struct mpsc_rx_desc *)(pi->rxr + (pi->rxr_posn*MPSC_RXRE_SIZE));

 dma_cache_sync(pi->port.dev, (void *)rxre, MPSC_RXRE_SIZE,
   DMA_FROM_DEVICE);
 while (!((cmdstat = be32_to_cpu(rxre->cmdstat))
    & SDMA_DESC_CMDSTAT_O)) {
  bytes_in = be16_to_cpu(rxre->bytecnt);







  if (unlikely(tty_buffer_request_room(tty, bytes_in)
     < bytes_in)) {
   if (tty->low_latency)
    tty_flip_buffer_push(tty);




  }

  bp = pi->rxb + (pi->rxr_posn * MPSC_RXBE_SIZE);
  dma_cache_sync(pi->port.dev, (void *)bp, MPSC_RXBE_SIZE,
    DMA_FROM_DEVICE);
  if (unlikely(cmdstat & (SDMA_DESC_CMDSTAT_BR
      | SDMA_DESC_CMDSTAT_FR
      | SDMA_DESC_CMDSTAT_OR))) {

   pi->port.icount.rx++;

   if (cmdstat & SDMA_DESC_CMDSTAT_BR) {
    pi->port.icount.brk++;

    if (uart_handle_break(&pi->port))
     goto next_frame;
   } else if (cmdstat & SDMA_DESC_CMDSTAT_FR) {
    pi->port.icount.frame++;
   } else if (cmdstat & SDMA_DESC_CMDSTAT_OR) {
    pi->port.icount.overrun++;
   }

   cmdstat &= pi->port.read_status_mask;

   if (cmdstat & SDMA_DESC_CMDSTAT_BR)
    flag = TTY_BREAK;
   else if (cmdstat & SDMA_DESC_CMDSTAT_FR)
    flag = TTY_FRAME;
   else if (cmdstat & SDMA_DESC_CMDSTAT_OR)
    flag = TTY_OVERRUN;
   else if (cmdstat & SDMA_DESC_CMDSTAT_PE)
    flag = TTY_PARITY;
  }

  if (uart_handle_sysrq_char(&pi->port, *bp)) {
   bp++;
   bytes_in--;






   goto next_frame;
  }

  if ((unlikely(cmdstat & (SDMA_DESC_CMDSTAT_BR
      | SDMA_DESC_CMDSTAT_FR
      | SDMA_DESC_CMDSTAT_OR)))
    && !(cmdstat & pi->port.ignore_status_mask)) {
   tty_insert_flip_char(tty, *bp, flag);
  } else {
   for (i=0; i<bytes_in; i++)
    tty_insert_flip_char(tty, *bp++, TTY_NORMAL);

   pi->port.icount.rx += bytes_in;
  }

next_frame:
  rxre->bytecnt = cpu_to_be16(0);
  wmb();
  rxre->cmdstat = cpu_to_be32(SDMA_DESC_CMDSTAT_O
    | SDMA_DESC_CMDSTAT_EI | SDMA_DESC_CMDSTAT_F
    | SDMA_DESC_CMDSTAT_L);
  wmb();
  dma_cache_sync(pi->port.dev, (void *)rxre, MPSC_RXRE_SIZE,
    DMA_BIDIRECTIONAL);







  pi->rxr_posn = (pi->rxr_posn + 1) & (MPSC_RXR_ENTRIES - 1);
  rxre = (struct mpsc_rx_desc *)
   (pi->rxr + (pi->rxr_posn * MPSC_RXRE_SIZE));
  dma_cache_sync(pi->port.dev, (void *)rxre, MPSC_RXRE_SIZE,
    DMA_FROM_DEVICE);





  rc = 1;
 }


 if ((readl(pi->sdma_base + SDMA_SDCM) & SDMA_SDCM_ERD) == 0)
  mpsc_start_rx(pi);

 tty_flip_buffer_push(tty);
 return rc;
}
