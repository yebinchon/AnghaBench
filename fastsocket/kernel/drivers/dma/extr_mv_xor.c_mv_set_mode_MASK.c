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
typedef  int u32 ;
struct mv_xor_chan {int current_type; TYPE_2__* device; } ;
typedef  enum dma_transaction_type { ____Placeholder_dma_transaction_type } dma_transaction_type ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DMA_MEMCPY 130 
#define  DMA_MEMSET 129 
#define  DMA_XOR 128 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (struct mv_xor_chan*) ; 
 int XOR_OPERATION_MODE_MEMCPY ; 
 int XOR_OPERATION_MODE_MEMSET ; 
 int XOR_OPERATION_MODE_XOR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC5(struct mv_xor_chan *chan,
			       enum dma_transaction_type type)
{
	u32 op_mode;
	u32 config = FUNC2(FUNC1(chan));

	switch (type) {
	case DMA_XOR:
		op_mode = XOR_OPERATION_MODE_XOR;
		break;
	case DMA_MEMCPY:
		op_mode = XOR_OPERATION_MODE_MEMCPY;
		break;
	case DMA_MEMSET:
		op_mode = XOR_OPERATION_MODE_MEMSET;
		break;
	default:
		FUNC4(KERN_ERR, chan->device->common.dev,
			   "error: unsupported operation %d.\n",
			   type);
		FUNC0();
		return;
	}

	config &= ~0x7;
	config |= op_mode;
	FUNC3(config, FUNC1(chan));
	chan->current_type = type;
}