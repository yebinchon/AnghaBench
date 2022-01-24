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
struct tty_struct {int dummy; } ;
struct TYPE_2__ {struct tty_struct* tty; } ;
struct specialix_port {int /*<<< orphan*/ * hits; TYPE_1__ port; } ;
struct specialix_board {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CD186x_RDCR ; 
 int /*<<< orphan*/  CD186x_RDR ; 
 int /*<<< orphan*/  SX_DEBUG_RX ; 
 int /*<<< orphan*/  TTY_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct specialix_port* FUNC3 (struct specialix_board*,char*) ; 
 unsigned char FUNC4 (struct specialix_board*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct specialix_board *bp)
{
	struct specialix_port *port;
	struct tty_struct *tty;
	unsigned char count;

	FUNC1();

	port = FUNC3(bp, "Receive");
	if (port == NULL) {
		FUNC0(SX_DEBUG_RX, "Hmm, couldn't find port.\n");
		FUNC2();
		return;
	}
	tty = port->port.tty;

	count = FUNC4(bp, CD186x_RDCR);
	FUNC0(SX_DEBUG_RX, "port: %p: count: %d\n", port, count);
	port->hits[count > 8 ? 9 : count]++;

	FUNC5(tty, count);

	while (count--)
		FUNC7(tty, FUNC4(bp, CD186x_RDR), TTY_NORMAL);
	FUNC6(tty);
	FUNC2();
}