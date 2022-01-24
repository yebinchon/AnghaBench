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
typedef  int u64 ;
struct TYPE_3__ {unsigned int desc_count; scalar_t__ base_addr; } ;
struct vnic_cq {unsigned int interrupt_offset; TYPE_2__* ctrl; TYPE_1__ ring; } ;
struct TYPE_4__ {int /*<<< orphan*/  cq_message_addr; int /*<<< orphan*/  interrupt_offset; int /*<<< orphan*/  cq_message_enable; int /*<<< orphan*/  cq_entry_enable; int /*<<< orphan*/  interrupt_enable; int /*<<< orphan*/  cq_tail_color; int /*<<< orphan*/  cq_tail; int /*<<< orphan*/  cq_head; int /*<<< orphan*/  color_enable; int /*<<< orphan*/  flow_control_enable; int /*<<< orphan*/  ring_size; int /*<<< orphan*/  ring_base; } ;

/* Variables and functions */
 int VNIC_PADDR_TARGET ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void FUNC2(struct vnic_cq *cq, unsigned int flow_control_enable,
	unsigned int color_enable, unsigned int cq_head, unsigned int cq_tail,
	unsigned int cq_tail_color, unsigned int interrupt_enable,
	unsigned int cq_entry_enable, unsigned int cq_message_enable,
	unsigned int interrupt_offset, u64 cq_message_addr)
{
	u64 paddr;

	paddr = (u64)cq->ring.base_addr | VNIC_PADDR_TARGET;
	FUNC1(paddr, &cq->ctrl->ring_base);
	FUNC0(cq->ring.desc_count, &cq->ctrl->ring_size);
	FUNC0(flow_control_enable, &cq->ctrl->flow_control_enable);
	FUNC0(color_enable, &cq->ctrl->color_enable);
	FUNC0(cq_head, &cq->ctrl->cq_head);
	FUNC0(cq_tail, &cq->ctrl->cq_tail);
	FUNC0(cq_tail_color, &cq->ctrl->cq_tail_color);
	FUNC0(interrupt_enable, &cq->ctrl->interrupt_enable);
	FUNC0(cq_entry_enable, &cq->ctrl->cq_entry_enable);
	FUNC0(cq_message_enable, &cq->ctrl->cq_message_enable);
	FUNC0(interrupt_offset, &cq->ctrl->interrupt_offset);
	FUNC1(cq_message_addr, &cq->ctrl->cq_message_addr);

	cq->interrupt_offset = interrupt_offset;
}