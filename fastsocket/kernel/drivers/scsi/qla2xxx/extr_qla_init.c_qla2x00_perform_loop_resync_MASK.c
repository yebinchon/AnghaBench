#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int device_flags; int /*<<< orphan*/  dpc_flags; int /*<<< orphan*/  loop_state; int /*<<< orphan*/  loop_down_timer; } ;
typedef  TYPE_1__ scsi_qla_host_t ;
typedef  int int32_t ;

/* Variables and functions */
 int DFLG_NO_CABLE ; 
 int /*<<< orphan*/  LOCAL_LOOP_UPDATE ; 
 int /*<<< orphan*/  LOOP_DEAD ; 
 int /*<<< orphan*/  LOOP_RESYNC_ACTIVE ; 
 int /*<<< orphan*/  LOOP_RESYNC_NEEDED ; 
 int /*<<< orphan*/  LOOP_UP ; 
 int /*<<< orphan*/  REGISTER_FC4_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(scsi_qla_host_t *ha)
{
	int32_t rval = 0;

	if (!FUNC4(LOOP_RESYNC_ACTIVE, &ha->dpc_flags)) {
		/*Configure the flags so that resync happens properly*/
		FUNC0(&ha->loop_down_timer, 0);
		if (!(ha->device_flags & DFLG_NO_CABLE)) {
			FUNC0(&ha->loop_state, LOOP_UP);
			FUNC3(LOCAL_LOOP_UPDATE, &ha->dpc_flags);
			FUNC3(REGISTER_FC4_NEEDED, &ha->dpc_flags);
			FUNC3(LOOP_RESYNC_NEEDED, &ha->dpc_flags);

			rval = FUNC2(ha);
		} else
			FUNC0(&ha->loop_state, LOOP_DEAD);

		FUNC1(LOOP_RESYNC_ACTIVE, &ha->dpc_flags);
	}

	return rval;
}