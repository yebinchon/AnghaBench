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
struct srp_target_port {scalar_t__ state; int /*<<< orphan*/  scsi_host; int /*<<< orphan*/  cm_id; } ;

/* Variables and functions */
 scalar_t__ SRP_TARGET_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct srp_target_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct srp_target_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct srp_target_port*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct srp_target_port *target)
{
	FUNC0(target->state != SRP_TARGET_REMOVED);

	FUNC4(target->scsi_host);
	FUNC8(target->scsi_host);
	FUNC3(target->scsi_host);
	FUNC5(target);
	FUNC1(target->cm_id);
	FUNC7(target);
	FUNC6(target);
	FUNC2(target->scsi_host);
}