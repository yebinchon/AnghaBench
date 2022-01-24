#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {scalar_t__ driver_data; } ;
struct TYPE_4__ {int flags; scalar_t__ delay_rts_before_send; } ;
struct e100_serial {size_t line; int char_time_usec; TYPE_1__ rs485; } ;
struct TYPE_5__ {int /*<<< orphan*/ * function; } ;

/* Variables and functions */
 int SER_RS485_ENABLED ; 
 int SER_RS485_RTS_AFTER_SEND ; 
 int SER_RS485_RTS_ON_SEND ; 
 unsigned int TIOCSER_TEMT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct e100_serial*) ; 
 int /*<<< orphan*/  FUNC2 (struct e100_serial*) ; 
 int /*<<< orphan*/  FUNC3 (struct e100_serial*) ; 
 int /*<<< orphan*/  FUNC4 (struct e100_serial*) ; 
 int /*<<< orphan*/  FUNC5 (struct e100_serial*,int) ; 
 TYPE_2__* fast_timers_rs485 ; 
 int /*<<< orphan*/  FUNC6 (struct e100_serial*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (struct tty_struct*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct tty_struct *tty,
	 const unsigned char *buf, int count)
{
#if defined(CONFIG_ETRAX_RS485)
	struct e100_serial *info = (struct e100_serial *)tty->driver_data;

	if (info->rs485.flags & SER_RS485_ENABLED)
	{
		/* If we are in RS-485 mode, we need to toggle RTS and disable
		 * the receiver before initiating a DMA transfer
		 */
#ifdef CONFIG_ETRAX_FAST_TIMER
		/* Abort any started timer */
		fast_timers_rs485[info->line].function = NULL;
		del_fast_timer(&fast_timers_rs485[info->line]);
#endif
		e100_rts(info, (info->rs485.flags & SER_RS485_RTS_ON_SEND));
#if defined(CONFIG_ETRAX_RS485_DISABLE_RECEIVER)
		e100_disable_rx(info);
		e100_enable_rx_irq(info);
#endif

		if (info->rs485.delay_rts_before_send > 0)
			msleep(info->rs485.delay_rts_before_send);
	}
#endif /* CONFIG_ETRAX_RS485 */

	count = FUNC8(tty, buf, count);

#if defined(CONFIG_ETRAX_RS485)
	if (info->rs485.flags & SER_RS485_ENABLED)
	{
		unsigned int val;
		/* If we are in RS-485 mode the following has to be done:
		 * wait until DMA is ready
		 * wait on transmit shift register
		 * toggle RTS
		 * enable the receiver
		 */

		/* Sleep until all sent */
		tty_wait_until_sent(tty, 0);
#ifdef CONFIG_ETRAX_FAST_TIMER
		/* Now sleep a little more so that shift register is empty */
		schedule_usleep(info->char_time_usec * 2);
#endif
		/* wait on transmit shift register */
		do{
			get_lsr_info(info, &val);
		}while (!(val & TIOCSER_TEMT));

		e100_rts(info, (info->rs485.flags & SER_RS485_RTS_AFTER_SEND));

#if defined(CONFIG_ETRAX_RS485_DISABLE_RECEIVER)
		e100_enable_rx(info);
		e100_enable_rxdma_irq(info);
#endif
	}
#endif /* CONFIG_ETRAX_RS485 */

	return count;
}