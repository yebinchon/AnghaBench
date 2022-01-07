
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {scalar_t__ driver_data; } ;
struct TYPE_4__ {int flags; scalar_t__ delay_rts_before_send; } ;
struct e100_serial {size_t line; int char_time_usec; TYPE_1__ rs485; } ;
struct TYPE_5__ {int * function; } ;


 int SER_RS485_ENABLED ;
 int SER_RS485_RTS_AFTER_SEND ;
 int SER_RS485_RTS_ON_SEND ;
 unsigned int TIOCSER_TEMT ;
 int del_fast_timer (TYPE_2__*) ;
 int e100_disable_rx (struct e100_serial*) ;
 int e100_enable_rx (struct e100_serial*) ;
 int e100_enable_rx_irq (struct e100_serial*) ;
 int e100_enable_rxdma_irq (struct e100_serial*) ;
 int e100_rts (struct e100_serial*,int) ;
 TYPE_2__* fast_timers_rs485 ;
 int get_lsr_info (struct e100_serial*,unsigned int*) ;
 int msleep (scalar_t__) ;
 int rs_raw_write (struct tty_struct*,unsigned char const*,int) ;
 int schedule_usleep (int) ;
 int tty_wait_until_sent (struct tty_struct*,int ) ;

__attribute__((used)) static int
rs_write(struct tty_struct *tty,
  const unsigned char *buf, int count)
{
 count = rs_raw_write(tty, buf, count);
 return count;
}
