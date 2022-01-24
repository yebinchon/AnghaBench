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
struct dasd_device {int /*<<< orphan*/  ref_count; int /*<<< orphan*/  mem_lock; int /*<<< orphan*/  erp_chunks; } ;
struct dasd_ccw_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC4(struct dasd_ccw_req *cqr, struct dasd_device * device)
{
	unsigned long flags;

	FUNC2(&device->mem_lock, flags);
	FUNC1(&device->erp_chunks, cqr);
	FUNC3(&device->mem_lock, flags);
	FUNC0(&device->ref_count);
}