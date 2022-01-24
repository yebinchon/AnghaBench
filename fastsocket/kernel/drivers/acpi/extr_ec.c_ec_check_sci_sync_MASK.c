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
typedef  int u8 ;
struct acpi_ec {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ACPI_EC_FLAG_SCI ; 
 int /*<<< orphan*/  EC_FLAGS_QUERY_PENDING ; 
 int FUNC0 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct acpi_ec *ec, u8 state)
{
	if (state & ACPI_EC_FLAG_SCI) {
		if (!FUNC1(EC_FLAGS_QUERY_PENDING, &ec->flags))
			return FUNC0(ec);
	}
	return 0;
}