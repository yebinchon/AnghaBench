
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct jsm_channel {int ch_flags; TYPE_1__* ch_bd; TYPE_2__* ch_neo_uart; } ;
struct TYPE_4__ {int isr_fcr; } ;
struct TYPE_3__ {int pci_dev; } ;


 int CH_TX_FIFO_EMPTY ;
 int CH_TX_FIFO_LWM ;
 int INFO ;
 int IOCTL ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_FCR_ENABLE_FIFO ;
 int jsm_printk (int ,int ,int *,char*,int) ;
 int readb (int *) ;
 int udelay (int) ;
 int writeb (int,int *) ;

__attribute__((used)) static void neo_flush_uart_write(struct jsm_channel *ch)
{
 u8 tmp = 0;
 int i = 0;

 if (!ch)
  return;

 writeb((UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_XMIT), &ch->ch_neo_uart->isr_fcr);

 for (i = 0; i < 10; i++) {


  tmp = readb(&ch->ch_neo_uart->isr_fcr);
  if (tmp & 4) {
   jsm_printk(IOCTL, INFO, &ch->ch_bd->pci_dev,
     "Still flushing TX UART... i: %d\n", i);
   udelay(10);
  }
  else
   break;
 }

 ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
}
