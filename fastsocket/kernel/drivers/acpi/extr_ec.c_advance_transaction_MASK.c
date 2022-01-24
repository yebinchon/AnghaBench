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
typedef  int u8 ;
struct acpi_ec {int /*<<< orphan*/  curr_lock; TYPE_1__* curr; } ;
struct TYPE_2__ {scalar_t__ wlen; scalar_t__ wi; scalar_t__ rlen; scalar_t__ ri; int done; int /*<<< orphan*/  irq_count; int /*<<< orphan*/ * rdata; int /*<<< orphan*/ * wdata; } ;

/* Variables and functions */
 int ACPI_EC_FLAG_IBF ; 
 int ACPI_EC_FLAG_OBF ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_ec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct acpi_ec *ec, u8 status)
{
	unsigned long flags;
	FUNC3(&ec->curr_lock, flags);
	if (!ec->curr)
		goto unlock;
	if (ec->curr->wlen > ec->curr->wi) {
		if ((status & ACPI_EC_FLAG_IBF) == 0)
			FUNC1(ec,
				ec->curr->wdata[ec->curr->wi++]);
		else
			goto err;
	} else if (ec->curr->rlen > ec->curr->ri) {
		if ((status & ACPI_EC_FLAG_OBF) == 1) {
			ec->curr->rdata[ec->curr->ri++] = FUNC0(ec);
			if (ec->curr->rlen == ec->curr->ri)
				ec->curr->done = true;
		} else
			goto err;
	} else if (ec->curr->wlen == ec->curr->wi &&
		   (status & ACPI_EC_FLAG_IBF) == 0)
		ec->curr->done = true;
	goto unlock;
err:
	/* false interrupt, state didn't change */
	if (FUNC2())
		++ec->curr->irq_count;
unlock:
	FUNC4(&ec->curr_lock, flags);
}