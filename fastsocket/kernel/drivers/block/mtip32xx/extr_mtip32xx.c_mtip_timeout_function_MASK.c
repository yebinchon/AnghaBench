#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mtip_port {unsigned long flags; long ic_pause_timer; int /*<<< orphan*/  cmd_timer; int /*<<< orphan*/  svc_wait; TYPE_2__* dd; int /*<<< orphan*/  cmd_slot; struct mtip_cmd* commands; int /*<<< orphan*/ * completed; } ;
struct mtip_cmd {unsigned long comp_time; int /*<<< orphan*/  active; int /*<<< orphan*/  direction; int /*<<< orphan*/  scatter_ents; int /*<<< orphan*/  sg; int /*<<< orphan*/ * comp_func; int /*<<< orphan*/  (* async_callback ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  async_data; scalar_t__ command; } ;
struct host_to_dev_fis {int dummy; } ;
struct TYPE_5__ {unsigned long dd_flag; int slot_groups; TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int MTIP_DDF_RESUME_BIT ; 
 int MTIP_PF_DM_ACTIVE_BIT ; 
 int MTIP_PF_EH_ACTIVE_BIT ; 
 int MTIP_PF_IC_ACTIVE_BIT ; 
 int MTIP_PF_SE_ACTIVE_BIT ; 
 int MTIP_TAG_INTERNAL ; 
 int MTIP_TIMEOUT_CHECK_PERIOD ; 
 int SLOTBITS_IN_LONGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned long FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mtip_port*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int,unsigned long*) ; 
 scalar_t__ FUNC14 (scalar_t__,unsigned long) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(unsigned long int data)
{
	struct mtip_port *port = (struct mtip_port *) data;
	struct host_to_dev_fis *fis;
	struct mtip_cmd *command;
	int tag, cmdto_cnt = 0;
	unsigned int bit, group;
	unsigned int num_command_slots;
	unsigned long to, tagaccum[SLOTBITS_IN_LONGS];

	if (FUNC15(!port))
		return;

	if (FUNC13(MTIP_DDF_RESUME_BIT, &port->dd->dd_flag)) {
		FUNC6(&port->cmd_timer,
			jiffies + FUNC7(30000));
		return;
	}
	/* clear the tag accumulator */
	FUNC5(tagaccum, 0, SLOTBITS_IN_LONGS * sizeof(long));
	num_command_slots = port->dd->slot_groups * 32;

	for (tag = 0; tag < num_command_slots; tag++) {
		/*
		 * Skip internal command slot as it has
		 * its own timeout mechanism
		 */
		if (tag == MTIP_TAG_INTERNAL)
			continue;

		if (FUNC0(&port->commands[tag].active) &&
		   (FUNC14(jiffies, port->commands[tag].comp_time))) {
			group = tag >> 5;
			bit = tag & 0x1F;

			command = &port->commands[tag];
			fis = (struct host_to_dev_fis *) command->command;

			FUNC11(tag, tagaccum);
			cmdto_cnt++;
			if (cmdto_cnt == 1)
				FUNC11(MTIP_PF_EH_ACTIVE_BIT, &port->flags);

			/*
			 * Clear the completed bit. This should prevent
			 *  any interrupt handlers from trying to retire
			 *  the command.
			 */
			FUNC18(1 << bit, port->completed[group]);

			/* Call the async completion callback. */
			if (FUNC4(command->async_callback))
				command->async_callback(command->async_data,
							 -EIO);
			command->async_callback = NULL;
			command->comp_func = NULL;

			/* Unmap the DMA scatter list entries */
			FUNC3(&port->dd->pdev->dev,
					command->sg,
					command->scatter_ents,
					command->direction);

			/*
			 * Clear the allocated bit and active tag for the
			 * command.
			 */
			FUNC1(&port->commands[tag].active, 0);
			FUNC10(port, tag);

			FUNC16(&port->cmd_slot);
		}
	}

	if (cmdto_cnt) {
		FUNC9(port->dd, "timed out", tagaccum, cmdto_cnt);
		if (!FUNC13(MTIP_PF_IC_ACTIVE_BIT, &port->flags)) {
			FUNC8(port->dd);
			FUNC17(&port->svc_wait);
		}
		FUNC2(MTIP_PF_EH_ACTIVE_BIT, &port->flags);
	}

	if (port->ic_pause_timer) {
		to  = port->ic_pause_timer + FUNC7(1000);
		if (FUNC14(jiffies, to)) {
			if (!FUNC13(MTIP_PF_IC_ACTIVE_BIT, &port->flags)) {
				port->ic_pause_timer = 0;
				FUNC2(MTIP_PF_SE_ACTIVE_BIT, &port->flags);
				FUNC2(MTIP_PF_DM_ACTIVE_BIT, &port->flags);
				FUNC2(MTIP_PF_IC_ACTIVE_BIT, &port->flags);
				FUNC17(&port->svc_wait);
			}


		}
	}

	/* Restart the timer */
	FUNC6(&port->cmd_timer,
		jiffies + FUNC7(MTIP_TIMEOUT_CHECK_PERIOD));
}