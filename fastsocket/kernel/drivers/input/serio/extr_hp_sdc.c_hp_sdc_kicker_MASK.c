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
struct TYPE_2__ {int /*<<< orphan*/  kicker; int /*<<< orphan*/  task; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 TYPE_1__ hp_sdc ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2 (unsigned long data)
{
	FUNC1(&hp_sdc.task);
	/* Re-insert the periodic task. */
	FUNC0(&hp_sdc.kicker, jiffies + HZ);
}