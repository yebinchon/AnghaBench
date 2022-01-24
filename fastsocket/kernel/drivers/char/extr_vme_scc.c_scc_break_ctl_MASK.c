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
struct tty_struct {struct scc_port* driver_data; } ;
struct scc_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scc_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCR_SEND_BREAK ; 
 int /*<<< orphan*/  TX_CTRL_REG ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty, int break_state)
{
	struct scc_port *port = tty->driver_data;
	unsigned long	flags;
	FUNC0(port);

	FUNC3(flags);
	FUNC1(TX_CTRL_REG, ~TCR_SEND_BREAK, 
			break_state ? TCR_SEND_BREAK : 0);
	FUNC2(flags);
	return 0;
}