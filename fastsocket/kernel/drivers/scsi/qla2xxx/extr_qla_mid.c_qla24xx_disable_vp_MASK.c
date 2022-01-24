#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ management_server_logged_in; } ;
struct TYPE_7__ {int /*<<< orphan*/  fc_vport; TYPE_1__ flags; int /*<<< orphan*/  vp_state; int /*<<< orphan*/  loop_down_timer; int /*<<< orphan*/  loop_state; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FC_VPORT_DISABLED ; 
 int /*<<< orphan*/  FC_VPORT_FAILED ; 
 int /*<<< orphan*/  LOOP_DOWN ; 
 int /*<<< orphan*/  LOOP_DOWN_TIME ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  VCE_COMMAND_DISABLE_VPS_LOGO_ALL ; 
 int /*<<< orphan*/  VP_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

int
FUNC4(scsi_qla_host_t *vha)
{
	int ret;

	ret = FUNC2(vha, VCE_COMMAND_DISABLE_VPS_LOGO_ALL);
	FUNC0(&vha->loop_state, LOOP_DOWN);
	FUNC0(&vha->loop_down_timer, LOOP_DOWN_TIME);

	FUNC3(vha);
	FUNC0(&vha->vp_state, VP_FAILED);
	vha->flags.management_server_logged_in = 0;
	if (ret == QLA_SUCCESS) {
		FUNC1(vha->fc_vport, FC_VPORT_DISABLED);
	} else {
		FUNC1(vha->fc_vport, FC_VPORT_FAILED);
		return -1;
	}
	return 0;
}