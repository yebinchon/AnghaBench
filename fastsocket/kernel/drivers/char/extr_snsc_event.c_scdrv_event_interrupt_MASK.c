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
struct subch_data_s {int /*<<< orphan*/  sd_rlock; int /*<<< orphan*/  sd_subch; int /*<<< orphan*/  sd_nasid; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int SAL_IROUTER_INTR_RECV ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sn_sysctl_event ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC4(int irq, void *subch_data)
{
	struct subch_data_s *sd = subch_data;
	unsigned long flags;
	int status;

	FUNC1(&sd->sd_rlock, flags);
	status = FUNC0(sd->sd_nasid, sd->sd_subch);

	if ((status > 0) && (status & SAL_IROUTER_INTR_RECV)) {
		FUNC3(&sn_sysctl_event);
	}
	FUNC2(&sd->sd_rlock, flags);
	return IRQ_HANDLED;
}