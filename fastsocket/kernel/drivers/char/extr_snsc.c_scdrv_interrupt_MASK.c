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
struct subch_data_s {int /*<<< orphan*/  sd_rlock; int /*<<< orphan*/  sd_wlock; int /*<<< orphan*/  sd_wq; int /*<<< orphan*/  sd_subch; int /*<<< orphan*/  sd_nasid; int /*<<< orphan*/  sd_rq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int SAL_IROUTER_INTR_RECV ; 
 int SAL_IROUTER_INTR_XMIT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC7(int irq, void *subch_data)
{
	struct subch_data_s *sd = subch_data;
	unsigned long flags;
	int status;

	FUNC3(&sd->sd_rlock, flags);
	FUNC2(&sd->sd_wlock);
	status = FUNC0(sd->sd_nasid, sd->sd_subch);

	if (status > 0) {
		if (status & SAL_IROUTER_INTR_RECV) {
			FUNC6(&sd->sd_rq);
		}
		if (status & SAL_IROUTER_INTR_XMIT) {
			FUNC1
			    (sd->sd_nasid, sd->sd_subch,
			     SAL_IROUTER_INTR_XMIT);
			FUNC6(&sd->sd_wq);
		}
	}
	FUNC4(&sd->sd_wlock);
	FUNC5(&sd->sd_rlock, flags);
	return IRQ_HANDLED;
}