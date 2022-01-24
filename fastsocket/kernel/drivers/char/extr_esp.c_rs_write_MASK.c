#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  stopped; int /*<<< orphan*/  name; struct esp_struct* driver_data; } ;
struct esp_struct {int xmit_cnt; int xmit_head; int IER; int /*<<< orphan*/  lock; scalar_t__ xmit_buf; } ;

/* Variables and functions */
 int ESI_SET_SRV_MASK ; 
 int ESP_XMIT_SIZE ; 
 int /*<<< orphan*/  UART_ESI_CMD1 ; 
 int /*<<< orphan*/  UART_ESI_CMD2 ; 
 int UART_IER_THRI ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct esp_struct*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct esp_struct*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty,
		    const unsigned char *buf, int count)
{
	int	c, t, ret = 0;
	struct esp_struct *info = tty->driver_data;
	unsigned long flags;

	if (FUNC2(info, tty->name, "rs_write"))
		return 0;

	if (!info->xmit_buf)
		return 0;

	while (1) {
		/* Thanks to R. Wolff for suggesting how to do this with */
		/* interrupts enabled */

		c = count;
		t = ESP_XMIT_SIZE - info->xmit_cnt - 1;

		if (t < c)
			c = t;

		t = ESP_XMIT_SIZE - info->xmit_head;

		if (t < c)
			c = t;

		if (c <= 0)
			break;

		FUNC0(info->xmit_buf + info->xmit_head, buf, c);

		info->xmit_head = (info->xmit_head + c) & (ESP_XMIT_SIZE-1);
		info->xmit_cnt += c;
		buf += c;
		count -= c;
		ret += c;
	}

	FUNC3(&info->lock, flags);

	if (info->xmit_cnt && !tty->stopped && !(info->IER & UART_IER_THRI)) {
		info->IER |= UART_IER_THRI;
		FUNC1(info, UART_ESI_CMD1, ESI_SET_SRV_MASK);
		FUNC1(info, UART_ESI_CMD2, info->IER);
	}

	FUNC4(&info->lock, flags);
	return ret;
}