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
struct memstick_host {int /*<<< orphan*/  lock; int /*<<< orphan*/  (* set_param ) (struct memstick_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MEMSTICK_POWER ; 
 int /*<<< orphan*/  MEMSTICK_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct memstick_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct memstick_host *host)
{
	FUNC0(&host->lock);
	host->set_param(host, MEMSTICK_POWER, MEMSTICK_POWER_OFF);
	FUNC1(&host->lock);
}