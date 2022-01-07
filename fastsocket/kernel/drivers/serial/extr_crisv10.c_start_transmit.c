
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ status; scalar_t__ hw_len; scalar_t__ sw_len; } ;
struct e100_serial {scalar_t__ line; int tr_running; scalar_t__ uses_dma_out; TYPE_1__ tr_descr; } ;


 scalar_t__ SERIAL_DEBUG_LINE ;
 int e100_enable_serial_tx_ready_irq (struct e100_serial*) ;
 int printk (char*) ;
 int transmit_chars_dma (struct e100_serial*) ;

__attribute__((used)) static void
start_transmit(struct e100_serial *info)
{





 info->tr_descr.sw_len = 0;
 info->tr_descr.hw_len = 0;
 info->tr_descr.status = 0;
 info->tr_running = 1;
 if (info->uses_dma_out)
  transmit_chars_dma(info);
 else
  e100_enable_serial_tx_ready_irq(info);
}
