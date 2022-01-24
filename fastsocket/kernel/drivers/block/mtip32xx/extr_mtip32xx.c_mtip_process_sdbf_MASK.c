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
typedef  int u32 ;
struct mtip_port {struct mtip_cmd* commands; int /*<<< orphan*/ * completed; } ;
struct mtip_cmd {int /*<<< orphan*/  comp_data; int /*<<< orphan*/  (* comp_func ) (struct mtip_port*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct driver_data {int slot_groups; TYPE_1__* pdev; struct mtip_port* port; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MTIP_TAG_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  (*) (struct mtip_port*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct driver_data*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mtip_port*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC8(struct driver_data *dd)
{
	struct mtip_port  *port = dd->port;
	int group, tag, bit;
	u32 completed;
	struct mtip_cmd *command;

	/* walk all bits in all slot groups */
	for (group = 0; group < dd->slot_groups; group++) {
		completed = FUNC4(port->completed[group]);
		if (!completed)
			continue;

		/* clear completed status register in the hardware.*/
		FUNC7(completed, port->completed[group]);

		/* Process completed commands. */
		for (bit = 0;
		     (bit < 32) && completed;
		     bit++, completed >>= 1) {
			if (completed & 0x01) {
				tag = (group << 5) | bit;

				/* skip internal command slot. */
				if (FUNC6(tag == MTIP_TAG_INTERNAL))
					continue;

				command = &port->commands[tag];
				/* make internal callback */
				if (FUNC1(command->comp_func)) {
					command->comp_func(
						port,
						tag,
						command->comp_data,
						0);
				} else {
					FUNC0(&dd->pdev->dev,
						"Null completion "
						"for tag %d",
						tag);

					if (FUNC2(
						dd->pdev)) {
						FUNC3(dd);
						return;
					}
				}
			}
		}
	}
}