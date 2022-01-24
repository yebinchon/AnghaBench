#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct srp_target_port {struct ib_cm_id* cm_id; TYPE_2__* srp_host; } ;
struct ib_cm_id {int dummy; } ;
struct TYPE_4__ {TYPE_1__* srp_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ib_cm_id*) ; 
 int FUNC1 (struct ib_cm_id*) ; 
 struct ib_cm_id* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct srp_target_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_cm_id*) ; 
 int /*<<< orphan*/  srp_cm_handler ; 

__attribute__((used)) static int FUNC4(struct srp_target_port *target)
{
	struct ib_cm_id *new_cm_id;

	new_cm_id = FUNC2(target->srp_host->srp_dev->dev,
				    srp_cm_handler, target);
	if (FUNC0(new_cm_id))
		return FUNC1(new_cm_id);

	if (target->cm_id)
		FUNC3(target->cm_id);
	target->cm_id = new_cm_id;

	return 0;
}