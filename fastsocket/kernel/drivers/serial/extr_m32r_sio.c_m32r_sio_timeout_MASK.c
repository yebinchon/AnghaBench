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
struct TYPE_2__ {unsigned int timeout; int /*<<< orphan*/  lock; } ;
struct uart_sio_port {int /*<<< orphan*/  timer; TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIOSTS ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct uart_sio_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned int FUNC2 (struct uart_sio_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct uart_sio_port *up = (struct uart_sio_port *)data;
	unsigned int timeout;
	unsigned int sts;

	sts = FUNC2(up, SIOSTS);
	if (sts & 0x5) {
		FUNC3(&up->port.lock);
		FUNC0(up, sts);
		FUNC4(&up->port.lock);
	}

	timeout = up->port.timeout;
	timeout = timeout > 6 ? (timeout / 2 - 2) : 1;
	FUNC1(&up->timer, jiffies + timeout);
}