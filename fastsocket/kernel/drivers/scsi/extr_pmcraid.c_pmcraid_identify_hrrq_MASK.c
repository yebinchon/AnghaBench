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
typedef  int /*<<< orphan*/  u32 ;
struct pmcraid_ioarcb {int hrrq_id; int* cdb; int /*<<< orphan*/  ioarcb_bus_addr; int /*<<< orphan*/  resource_handle; int /*<<< orphan*/  request_type; } ;
struct pmcraid_instance {int num_hrrq; int /*<<< orphan*/ * hrrq_start_bus_addr; } ;
struct pmcraid_cmd {int hrrq_index; TYPE_1__* ioa_cb; struct pmcraid_instance* drv_inst; } ;
typedef  int /*<<< orphan*/  hrrq_size ;
typedef  int /*<<< orphan*/  hrrq_addr ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_2__ {struct pmcraid_ioarcb ioarcb; } ;

/* Variables and functions */
 int PMCRAID_IDENTIFY_HRRQ ; 
 int /*<<< orphan*/  PMCRAID_INTERNAL_TIMEOUT ; 
 int /*<<< orphan*/  PMCRAID_IOA_RES_HANDLE ; 
 int PMCRAID_MAX_CMD ; 
 int /*<<< orphan*/  REQ_TYPE_IOACMD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int) ; 
 void FUNC4 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC7 (struct pmcraid_cmd*,void (*) (struct pmcraid_cmd*),int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmcraid_timeout_handler ; 

__attribute__((used)) static void FUNC8(struct pmcraid_cmd *cmd)
{
	struct pmcraid_instance *pinstance = cmd->drv_inst;
	struct pmcraid_ioarcb *ioarcb = &cmd->ioa_cb->ioarcb;
	int index = cmd->hrrq_index;
	__be64 hrrq_addr = FUNC1(pinstance->hrrq_start_bus_addr[index]);
	u32 hrrq_size = FUNC0(sizeof(u32) * PMCRAID_MAX_CMD);
	void (*done_function)(struct pmcraid_cmd *);

	FUNC6(cmd);
	cmd->hrrq_index = index + 1;

	if (cmd->hrrq_index < pinstance->num_hrrq) {
		done_function = pmcraid_identify_hrrq;
	} else {
		cmd->hrrq_index = 0;
		done_function = pmcraid_get_fwversion;
	}

	/* Initialize ioarcb */
	ioarcb->request_type = REQ_TYPE_IOACMD;
	ioarcb->resource_handle = FUNC2(PMCRAID_IOA_RES_HANDLE);

	/* initialize the hrrq number where IOA will respond to this command */
	ioarcb->hrrq_id = index;
	ioarcb->cdb[0] = PMCRAID_IDENTIFY_HRRQ;
	ioarcb->cdb[1] = index;

	/* IOA expects 64-bit pci address to be written in B.E format
	 * (i.e cdb[2]=MSByte..cdb[9]=LSB.
	 */
	FUNC5("HRRQ_IDENTIFY with hrrq:ioarcb:index => %llx:%llx:%x\n",
		     hrrq_addr, ioarcb->ioarcb_bus_addr, index);

	FUNC3(&(ioarcb->cdb[2]), &hrrq_addr, sizeof(hrrq_addr));
	FUNC3(&(ioarcb->cdb[10]), &hrrq_size, sizeof(hrrq_size));

	/* Subsequent commands require HRRQ identification to be successful.
	 * Note that this gets called even during reset from SCSI mid-layer
	 * or tasklet
	 */
	FUNC7(cmd, done_function,
			 PMCRAID_INTERNAL_TIMEOUT,
			 pmcraid_timeout_handler);
}