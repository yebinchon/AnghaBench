#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xpc_send_msg_slot_uv {int /*<<< orphan*/  next; } ;
struct TYPE_3__ {int /*<<< orphan*/  msg_slot_free_list; } ;
struct TYPE_4__ {TYPE_1__ uv; } ;
struct xpc_channel {int /*<<< orphan*/  msg_allocate_wq; int /*<<< orphan*/  n_on_msg_allocate_wq; TYPE_2__ sn; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct xpc_channel *ch,
		     struct xpc_send_msg_slot_uv *msg_slot)
{
	FUNC2(&ch->sn.uv.msg_slot_free_list, &msg_slot->next);

	/* wakeup anyone waiting for a free msg slot */
	if (FUNC0(&ch->n_on_msg_allocate_wq) > 0)
		FUNC1(&ch->msg_allocate_wq);
}