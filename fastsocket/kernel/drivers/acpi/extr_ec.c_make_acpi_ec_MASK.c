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
struct acpi_ec {int flags; int /*<<< orphan*/  curr_lock; int /*<<< orphan*/  list; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EC_FLAGS_QUERY_PENDING ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct acpi_ec* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct acpi_ec *FUNC5(void)
{
	struct acpi_ec *ec = FUNC2(sizeof(struct acpi_ec), GFP_KERNEL);
	if (!ec)
		return NULL;
	ec->flags = 1 << EC_FLAGS_QUERY_PENDING;
	FUNC3(&ec->lock);
	FUNC1(&ec->wait);
	FUNC0(&ec->list);
	FUNC4(&ec->curr_lock);
	return ec;
}