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
struct serio {struct psif* port_data; } ;
struct psif {int /*<<< orphan*/  lock; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SR ; 
 int /*<<< orphan*/  THR ; 
 int /*<<< orphan*/  TXEMPTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct psif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct psif*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct serio *io, unsigned char val)
{
	struct psif *psif = io->port_data;
	unsigned long flags;
	int timeout = 10;
	int retval = 0;

	FUNC5(&psif->lock, flags);

	while (!(FUNC3(psif, SR) & FUNC0(TXEMPTY)) && timeout--)
		FUNC2(10);

	if (timeout >= 0) {
		FUNC4(psif, THR, val);
	} else {
		FUNC1(&psif->pdev->dev, "timeout writing to THR\n");
		retval = -EBUSY;
	}

	FUNC6(&psif->lock, flags);

	return retval;
}