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
struct tty_struct {int /*<<< orphan*/  hw_stopped; int /*<<< orphan*/  stopped; scalar_t__ driver_data; } ;
struct TYPE_2__ {int head; int /*<<< orphan*/  tail; scalar_t__ buf; } ;
struct async_struct {TYPE_1__ xmit; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int SERIAL_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned char const*,int) ; 
 int /*<<< orphan*/  tmp_buf ; 
 int /*<<< orphan*/  FUNC5 (struct async_struct*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct tty_struct * tty,
		    const unsigned char *buf, int count)
{
	int	c, ret = 0;
	struct async_struct *info = (struct async_struct *)tty->driver_data;
	unsigned long flags;

	if (!tty || !info->xmit.buf || !tmp_buf) return 0;

	FUNC3(flags);
	while (1) {
		c = FUNC1(info->xmit.head, info->xmit.tail, SERIAL_XMIT_SIZE);
		if (count < c)
			c = count;
		if (c <= 0) {
			break;
		}
		FUNC4(info->xmit.buf + info->xmit.head, buf, c);
		info->xmit.head = ((info->xmit.head + c) &
				   (SERIAL_XMIT_SIZE-1));
		buf += c;
		count -= c;
		ret += c;
	}
	FUNC2(flags);
	/*
	 * Hey, we transmit directly from here in our case
	 */
	if (FUNC0(info->xmit.head, info->xmit.tail, SERIAL_XMIT_SIZE)
	    && !tty->stopped && !tty->hw_stopped) {
		FUNC5(info, NULL);
	}
	return ret;
}