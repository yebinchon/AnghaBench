#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct zilog_channel {int /*<<< orphan*/  control; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct uart_ip22zilog_port {struct uart_ip22zilog_port* next; TYPE_1__ port; } ;
struct tty_struct {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned char CHAEXT ; 
 unsigned char CHARxIP ; 
 unsigned char CHATxIP ; 
 unsigned char CHBEXT ; 
 unsigned char CHBRxIP ; 
 unsigned char CHBTxIP ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  R3 ; 
 int /*<<< orphan*/  RES_H_IUS ; 
 struct zilog_channel* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct zilog_channel*) ; 
 struct tty_struct* FUNC3 (struct uart_ip22zilog_port*,struct zilog_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_ip22zilog_port*,struct zilog_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_ip22zilog_port*,struct zilog_channel*) ; 
 unsigned char FUNC6 (struct zilog_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct uart_ip22zilog_port *up = dev_id;

	while (up) {
		struct zilog_channel *channel
			= FUNC0(&up->port);
		struct tty_struct *tty;
		unsigned char r3;

		FUNC7(&up->port.lock);
		r3 = FUNC6(channel, R3);

		/* Channel A */
		tty = NULL;
		if (r3 & (CHAEXT | CHATxIP | CHARxIP)) {
			FUNC10(RES_H_IUS, &channel->control);
			FUNC1();
			FUNC2(channel);

			if (r3 & CHARxIP)
				tty = FUNC3(up, channel);
			if (r3 & CHAEXT)
				FUNC4(up, channel);
			if (r3 & CHATxIP)
				FUNC5(up, channel);
		}
		FUNC8(&up->port.lock);

		if (tty)
			FUNC9(tty);

		/* Channel B */
		up = up->next;
		channel = FUNC0(&up->port);

		FUNC7(&up->port.lock);
		tty = NULL;
		if (r3 & (CHBEXT | CHBTxIP | CHBRxIP)) {
			FUNC10(RES_H_IUS, &channel->control);
			FUNC1();
			FUNC2(channel);

			if (r3 & CHBRxIP)
				tty = FUNC3(up, channel);
			if (r3 & CHBEXT)
				FUNC4(up, channel);
			if (r3 & CHBTxIP)
				FUNC5(up, channel);
		}
		FUNC8(&up->port.lock);

		if (tty)
			FUNC9(tty);

		up = up->next;
	}

	return IRQ_HANDLED;
}