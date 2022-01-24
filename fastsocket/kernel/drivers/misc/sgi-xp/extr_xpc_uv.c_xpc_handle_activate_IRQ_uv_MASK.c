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
struct xpc_partition {int dummy; } ;
struct xpc_activate_mq_msghdr_uv {short partid; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  gru_mq_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 short XP_MAX_NPARTITIONS_UV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct xpc_activate_mq_msghdr_uv*) ; 
 struct xpc_activate_mq_msghdr_uv* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xpc_activate_IRQ_wq ; 
 TYPE_1__* xpc_activate_mq_uv ; 
 int /*<<< orphan*/  FUNC4 (struct xpc_partition*,struct xpc_activate_mq_msghdr_uv*,int,int*) ; 
 int /*<<< orphan*/  xpc_part ; 
 int /*<<< orphan*/  FUNC5 (struct xpc_partition*) ; 
 int FUNC6 (struct xpc_partition*) ; 
 struct xpc_partition* xpc_partitions ; 

__attribute__((used)) static irqreturn_t
FUNC7(int irq, void *dev_id)
{
	struct xpc_activate_mq_msghdr_uv *msg_hdr;
	short partid;
	struct xpc_partition *part;
	int wakeup_hb_checker = 0;
	int part_referenced;

	while (1) {
		msg_hdr = FUNC2(xpc_activate_mq_uv->gru_mq_desc);
		if (msg_hdr == NULL)
			break;

		partid = msg_hdr->partid;
		if (partid < 0 || partid >= XP_MAX_NPARTITIONS_UV) {
			FUNC0(xpc_part, "xpc_handle_activate_IRQ_uv() "
				"received invalid partid=0x%x in message\n",
				partid);
		} else {
			part = &xpc_partitions[partid];

			part_referenced = FUNC6(part);
			FUNC4(part, msg_hdr,
						      part_referenced,
						      &wakeup_hb_checker);
			if (part_referenced)
				FUNC5(part);
		}

		FUNC1(xpc_activate_mq_uv->gru_mq_desc, msg_hdr);
	}

	if (wakeup_hb_checker)
		FUNC3(&xpc_activate_IRQ_wq);

	return IRQ_HANDLED;
}