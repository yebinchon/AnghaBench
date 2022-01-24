#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int dummy; } ;
struct TYPE_3__ {struct tty_struct* tty; } ;
struct TYPE_4__ {TYPE_1__ port; } ;
struct a2232_port {TYPE_2__ gs; } ;

/* Variables and functions */
#define  TTY_BREAK 131 
#define  TTY_FRAME 130 
#define  TTY_OVERRUN 129 
#define  TTY_PARITY 128 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,int,int) ; 

__attribute__((used)) static inline void FUNC2(struct a2232_port *port, int ch, int err)
{
/* 	Mostly stolen from other drivers.
	Maybe one could implement a more efficient version by not only
	transferring one character at a time.
*/
	struct tty_struct *tty = port->gs.port.tty;

#if 0
	switch(err) {
	case TTY_BREAK:
		break;
	case TTY_PARITY:
		break;
	case TTY_OVERRUN:
		break;
	case TTY_FRAME:
		break;
	}
#endif

	FUNC1(tty, ch, err);
	FUNC0(tty);
}