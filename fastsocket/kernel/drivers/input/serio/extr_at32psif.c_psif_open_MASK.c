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
struct serio {struct psif* port_data; } ;
struct psif {int open; int /*<<< orphan*/  pclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR ; 
 int /*<<< orphan*/  CR_RXEN ; 
 int /*<<< orphan*/  CR_TXEN ; 
 int /*<<< orphan*/  IER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RXRDY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct psif*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct serio *io)
{
	struct psif *psif = io->port_data;
	int retval;

	retval = FUNC1(psif->pclk);
	if (retval)
		goto out;

	FUNC2(psif, CR, FUNC0(CR_TXEN) | FUNC0(CR_RXEN));
	FUNC2(psif, IER, FUNC0(RXRDY));

	psif->open = 1;
out:
	return retval;
}