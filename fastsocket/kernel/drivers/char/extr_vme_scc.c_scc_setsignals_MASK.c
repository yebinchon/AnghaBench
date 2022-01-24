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
struct scc_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scc_port*) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char) ; 
 unsigned char TCR_DTR ; 
 unsigned char TCR_RTS ; 
 int /*<<< orphan*/  TX_CTRL_REG ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

__attribute__((used)) static void FUNC5(struct scc_port *port, int dtr, int rts)
{
	unsigned long flags;
	unsigned char t;
	FUNC0(port);

	FUNC4(flags);
	t = FUNC1(TX_CTRL_REG);
	if (dtr >= 0) t = dtr? (t | TCR_DTR): (t & ~TCR_DTR);
	if (rts >= 0) t = rts? (t | TCR_RTS): (t & ~TCR_RTS);
	FUNC2(TX_CTRL_REG, t);
	FUNC3(flags);
}