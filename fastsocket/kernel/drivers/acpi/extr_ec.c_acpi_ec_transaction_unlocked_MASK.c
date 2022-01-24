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
struct transaction {scalar_t__ command; } ;
struct acpi_ec {int /*<<< orphan*/  curr_lock; struct transaction* curr; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ ACPI_EC_COMMAND_QUERY ; 
 int /*<<< orphan*/  ACPI_EC_MSI_UDELAY ; 
 scalar_t__ EC_FLAGS_MSI ; 
 int /*<<< orphan*/  EC_FLAGS_QUERY_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct acpi_ec *ec,
					struct transaction *t)
{
	unsigned long tmp;
	int ret = 0;
	if (EC_FLAGS_MSI)
		FUNC5(ACPI_EC_MSI_UDELAY);
	/* start transaction */
	FUNC2(&ec->curr_lock, tmp);
	/* following two actions should be kept atomic */
	ec->curr = t;
	FUNC4(ec);
	if (ec->curr->command == ACPI_EC_COMMAND_QUERY)
		FUNC0(EC_FLAGS_QUERY_PENDING, &ec->flags);
	FUNC3(&ec->curr_lock, tmp);
	ret = FUNC1(ec);
	FUNC2(&ec->curr_lock, tmp);
	ec->curr = NULL;
	FUNC3(&ec->curr_lock, tmp);
	return ret;
}