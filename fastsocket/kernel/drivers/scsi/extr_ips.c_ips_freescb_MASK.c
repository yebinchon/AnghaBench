#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; struct TYPE_8__* q_next; int /*<<< orphan*/  data_len; int /*<<< orphan*/  data_busaddr; int /*<<< orphan*/  scsi_cmd; } ;
typedef  TYPE_1__ ips_scb_t ;
struct TYPE_9__ {int max_cmds; TYPE_1__* scb_freelist; int /*<<< orphan*/  pcidev; } ;
typedef  TYPE_2__ ips_ha_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int IPS_SCB_MAP_SG ; 
 int IPS_SCB_MAP_SINGLE ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(ips_ha_t * ha, ips_scb_t * scb)
{

	FUNC2("ips_freescb", 1);
	if (scb->flags & IPS_SCB_MAP_SG)
                FUNC4(scb->scsi_cmd);
	else if (scb->flags & IPS_SCB_MAP_SINGLE)
		FUNC3(ha->pcidev, scb->data_busaddr, scb->data_len,
				 FUNC1(scb));

	/* check to make sure this is not our "special" scb */
	if (FUNC0(ha, scb) < (ha->max_cmds - 1)) {
		scb->q_next = ha->scb_freelist;
		ha->scb_freelist = scb;
	}
}