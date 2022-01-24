#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {unsigned int ISTR; } ;
struct TYPE_5__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int ISTR_INTS ; 
 unsigned int ISTR_INT_P ; 
 TYPE_1__* a3000_host ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static irqreturn_t FUNC5 (int irq, void *dummy)
{
	unsigned long flags;
	unsigned int status = FUNC0(a3000_host)->ISTR;

	if (!(status & ISTR_INT_P))
		return IRQ_NONE;
	if (status & ISTR_INTS)
	{
		FUNC2(a3000_host->host_lock, flags);
		FUNC4 (a3000_host);
		FUNC3(a3000_host->host_lock, flags);
		return IRQ_HANDLED;
	}
	FUNC1("Non-serviced A3000 SCSI-interrupt? ISTR = %02x\n", status);
	return IRQ_NONE;
}