#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  command_id; } ;
struct TYPE_8__ {TYPE_1__ basic_io; } ;
struct TYPE_9__ {int /*<<< orphan*/  scb_busaddr; TYPE_2__ cmd; int /*<<< orphan*/  lun; int /*<<< orphan*/  target_id; int /*<<< orphan*/  bus; int /*<<< orphan*/ * cdb; scalar_t__ scsi_cmd; } ;
typedef  TYPE_3__ ips_scb_t ;
struct TYPE_10__ {scalar_t__ mem_ptr; int /*<<< orphan*/  pcidev; int /*<<< orphan*/  host_num; } ;
typedef  TYPE_4__ ips_ha_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int IPS_BIT_SEM ; 
 int /*<<< orphan*/  IPS_BIT_START_CMD ; 
 int IPS_BIT_START_STOP ; 
 int IPS_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ IPS_REG_CCCR ; 
 scalar_t__ IPS_REG_CCSAR ; 
 int IPS_SEM_TIMEOUT ; 
 int IPS_SUCCESS ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  ips_name ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(ips_ha_t * ha, ips_scb_t * scb)
{
	uint32_t TimeOut;
	uint32_t val;

	FUNC2("ips_issue_copperhead_memio", 1);

	if (scb->scsi_cmd) {
		FUNC0(2, "(%s%d) ips_issue: cmd 0x%X id %d (%d %d %d)",
			  ips_name,
			  ha->host_num,
			  scb->cdb[0],
			  scb->cmd.basic_io.command_id,
			  scb->bus, scb->target_id, scb->lun);
	} else {
		FUNC0(2, "(%s%d) ips_issue: logical cmd id %d",
			  ips_name, ha->host_num, scb->cmd.basic_io.command_id);
	}

	TimeOut = 0;

	while ((val = FUNC3(ha->mem_ptr + IPS_REG_CCCR)) & IPS_BIT_SEM) {
		FUNC4(1000);

		if (++TimeOut >= IPS_SEM_TIMEOUT) {
			if (!(val & IPS_BIT_START_STOP))
				break;

			FUNC1(KERN_WARNING, ha->pcidev,
				   "ips_issue val [0x%x].\n", val);
			FUNC1(KERN_WARNING, ha->pcidev,
				   "ips_issue semaphore chk timeout.\n");

			return (IPS_FAILURE);
		}		/* end if */
	}			/* end while */

	FUNC5(scb->scb_busaddr, ha->mem_ptr + IPS_REG_CCSAR);
	FUNC5(IPS_BIT_START_CMD, ha->mem_ptr + IPS_REG_CCCR);

	return (IPS_SUCCESS);
}