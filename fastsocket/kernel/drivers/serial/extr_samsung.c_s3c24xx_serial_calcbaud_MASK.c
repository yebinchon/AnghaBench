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
struct uart_port {int /*<<< orphan*/  dev; } ;
struct s3c24xx_uart_port {TYPE_1__* info; } ;
struct s3c24xx_uart_clksrc {unsigned long divisor; int /*<<< orphan*/  name; } ;
struct baud_calc {unsigned long quot; unsigned long calc; struct s3c24xx_uart_clksrc* clksrc; int /*<<< orphan*/ * src; } ;
struct TYPE_2__ {scalar_t__ has_divslot; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 struct s3c24xx_uart_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static int FUNC4(struct baud_calc *calc,
				   struct uart_port *port,
				   struct s3c24xx_uart_clksrc *clksrc,
				   unsigned int baud)
{
	struct s3c24xx_uart_port *ourport = FUNC3(port);
	unsigned long rate;

	calc->src = FUNC1(port->dev, clksrc->name);
	if (calc->src == NULL || FUNC0(calc->src))
		return 0;

	rate = FUNC2(calc->src);
	rate /= clksrc->divisor;

	calc->clksrc = clksrc;

	if (ourport->info->has_divslot) {
		unsigned long div = rate / baud;

		/* The UDIVSLOT register on the newer UARTs allows us to
		 * get a divisor adjustment of 1/16th on the baud clock.
		 *
		 * We don't keep the UDIVSLOT value (the 16ths we calculated
		 * by not multiplying the baud by 16) as it is easy enough
		 * to recalculate.
		 */

		calc->quot = div / 16;
		calc->calc = rate / div;
	} else {
		calc->quot = (rate + (8 * baud)) / (16 * baud);
		calc->calc = (rate / (calc->quot * 16));
	}

	calc->quot--;
	return 1;
}