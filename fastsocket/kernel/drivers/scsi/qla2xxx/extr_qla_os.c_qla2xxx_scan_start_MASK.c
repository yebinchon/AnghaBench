#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dpc_flags; TYPE_2__* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
struct TYPE_5__ {scalar_t__ running_gold_fw; } ;
struct TYPE_6__ {TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCAL_LOOP_UPDATE ; 
 int /*<<< orphan*/  LOOP_RESYNC_NEEDED ; 
 int /*<<< orphan*/  NPIV_CONFIG_NEEDED ; 
 int /*<<< orphan*/  RSCN_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (struct Scsi_Host*) ; 

__attribute__((used)) static void
FUNC2(struct Scsi_Host *shost)
{
	scsi_qla_host_t *vha = FUNC1(shost);

	if (vha->hw->flags.running_gold_fw)
		return;

	FUNC0(LOOP_RESYNC_NEEDED, &vha->dpc_flags);
	FUNC0(LOCAL_LOOP_UPDATE, &vha->dpc_flags);
	FUNC0(RSCN_UPDATE, &vha->dpc_flags);
	FUNC0(NPIV_CONFIG_NEEDED, &vha->dpc_flags);
}