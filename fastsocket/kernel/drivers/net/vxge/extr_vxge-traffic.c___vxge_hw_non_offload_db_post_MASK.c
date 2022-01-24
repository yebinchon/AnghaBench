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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct __vxge_hw_channel {int dummy; } ;
struct __vxge_hw_fifo {TYPE_1__* nofl_db; struct __vxge_hw_channel channel; } ;
struct TYPE_2__ {int /*<<< orphan*/  txdl_ptr; int /*<<< orphan*/  control_0; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VXGE_HW_NODBW_TYPE_NODBW ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct __vxge_hw_fifo *fifo,
	u64 txdl_ptr, u32 num_txds, u32 no_snoop)
{
	struct __vxge_hw_channel *channel;

	channel = &fifo->channel;

	FUNC4(FUNC2(VXGE_HW_NODBW_TYPE_NODBW) |
		FUNC1(num_txds) |
		FUNC0(no_snoop),
		&fifo->nofl_db->control_0);

	FUNC3();

	FUNC4(txdl_ptr, &fifo->nofl_db->txdl_ptr);

	FUNC3();
}