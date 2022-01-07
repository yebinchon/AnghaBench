
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_trigger; int tx_trigger; } ;
struct esp_struct {int stat_flags; int line; int irq; TYPE_1__ config; } ;


 int ESI_SET_DMA_TMOUT ;
 int ESI_SET_ENH_IRQ ;
 int ESI_SET_ERR_MASK ;
 int ESI_SET_IRQ ;
 int ESI_SET_MODE ;
 int ESI_SET_PRESCALAR ;
 int ESI_SET_REINTR ;
 int ESI_SET_SRV_MASK ;
 int ESI_SET_TRIGGER ;
 int ESPC_SCALE ;
 int ESP_STAT_NEVER_DMA ;
 int UART_ESI_CMD1 ;
 int UART_ESI_CMD2 ;
 int dma ;
 int serial_out (struct esp_struct*,int ,int) ;

__attribute__((used)) static void esp_basic_init(struct esp_struct *info)
{

 serial_out(info, UART_ESI_CMD1, ESI_SET_MODE);

 if (info->stat_flags & ESP_STAT_NEVER_DMA)
  serial_out(info, UART_ESI_CMD2, 0x01);
 else
  serial_out(info, UART_ESI_CMD2, 0x31);


 serial_out(info, UART_ESI_CMD1, ESI_SET_SRV_MASK);
 serial_out(info, UART_ESI_CMD2, 0x00);


 serial_out(info, UART_ESI_CMD1, ESI_SET_IRQ);

 if (info->stat_flags & ESP_STAT_NEVER_DMA)
  serial_out(info, UART_ESI_CMD2, 0x01);
 else
  serial_out(info, UART_ESI_CMD2, (dma << 4) | 0x01);

 serial_out(info, UART_ESI_CMD1, ESI_SET_ENH_IRQ);

 if (info->line % 8)
  serial_out(info, UART_ESI_CMD2, 0x0d);
 else if (info->irq == 9)
  serial_out(info, UART_ESI_CMD2, 0x02);
 else
  serial_out(info, UART_ESI_CMD2, info->irq);


 serial_out(info, UART_ESI_CMD1, ESI_SET_ERR_MASK);

 if (info->stat_flags & ESP_STAT_NEVER_DMA)
  serial_out(info, UART_ESI_CMD2, 0xa1);
 else
  serial_out(info, UART_ESI_CMD2, 0xbd);

 serial_out(info, UART_ESI_CMD2, 0x00);


 serial_out(info, UART_ESI_CMD1, ESI_SET_DMA_TMOUT);
 serial_out(info, UART_ESI_CMD2, 0xff);


 serial_out(info, UART_ESI_CMD1, ESI_SET_TRIGGER);
 serial_out(info, UART_ESI_CMD2, info->config.rx_trigger >> 8);
 serial_out(info, UART_ESI_CMD2, info->config.rx_trigger);
 serial_out(info, UART_ESI_CMD2, info->config.tx_trigger >> 8);
 serial_out(info, UART_ESI_CMD2, info->config.tx_trigger);


 serial_out(info, UART_ESI_CMD1, ESI_SET_PRESCALAR);
 serial_out(info, UART_ESI_CMD2, 0x04 | ESPC_SCALE);


 serial_out(info, UART_ESI_CMD1, ESI_SET_REINTR);
 serial_out(info, UART_ESI_CMD2, 0xff);
}
