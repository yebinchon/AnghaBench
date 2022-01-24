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
struct acpi_ec {int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int ACPI_EC_DELAY ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_ec*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct acpi_ec *ec)
{
	unsigned long delay = jiffies + FUNC1(ACPI_EC_DELAY);
	/* interrupt wait manually if GPE mode is not active */
	while (FUNC2(jiffies, delay))
		if (FUNC3(ec->wait, FUNC0(ec),
					FUNC1(1)))
			return 0;
	return -ETIME;
}