#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u32 ;
struct status_desc {int /*<<< orphan*/ * status_desc_data; } ;
struct qlcnic_host_sds_ring {size_t consumer; int /*<<< orphan*/  crb_sts_consumer; int /*<<< orphan*/  num_desc; struct status_desc* desc_head; struct qlcnic_adapter* adapter; } ;
struct qlcnic_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_OWNER_PHANTOM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (size_t,int /*<<< orphan*/ ) ; 

void FUNC8(struct qlcnic_host_sds_ring *sds_ring)
{
	struct qlcnic_adapter *adapter = sds_ring->adapter;
	struct status_desc *desc;
	u64 sts_data[2];
	int ring, opcode;
	u32 consumer = sds_ring->consumer;

	desc = &sds_ring->desc_head[consumer];
	sts_data[0] = FUNC3(desc->status_desc_data[0]);
	sts_data[1] = FUNC3(desc->status_desc_data[1]);
	opcode = FUNC5(sts_data[1]);
	if (!opcode)
		return;

	ring = FUNC0(FUNC4(sts_data[0]));
	FUNC6(adapter, ring, sts_data);
	desc = &sds_ring->desc_head[consumer];
	desc->status_desc_data[0] = FUNC1(STATUS_OWNER_PHANTOM);
	consumer = FUNC2(consumer, sds_ring->num_desc);
	sds_ring->consumer = consumer;
	FUNC7(consumer, sds_ring->crb_sts_consumer);
}