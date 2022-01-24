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
struct salinfo_data {int /*<<< orphan*/  cpu_event; int /*<<< orphan*/  open; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  data_saved_lock ; 
 int /*<<< orphan*/  FUNC1 (struct salinfo_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct salinfo_data *data)
{
	unsigned long flags;
	if (!data->open)
		return;
	if (!FUNC0(data->cpu_event)) {
		FUNC2(&data_saved_lock, flags);
		FUNC1(data);
		FUNC3(&data_saved_lock, flags);
	}
}