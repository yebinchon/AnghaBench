#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int mode_bit_map; scalar_t__ cmd_offset; } ;
struct TYPE_9__ {scalar_t__ data_len; int data_off; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; } ;
struct TYPE_7__ {int /*<<< orphan*/  val; } ;
struct TYPE_6__ {scalar_t__ op; scalar_t__ offset; } ;
union init_op {TYPE_5__ if_mode; TYPE_4__ arr_wr; TYPE_3__ zero; TYPE_2__ write; TYPE_1__ raw; } ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC1 (struct bnx2x*) ; 
 int FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/ * FUNC3 (struct bnx2x*) ; 
 scalar_t__* FUNC4 (struct bnx2x*) ; 
#define  OP_IF_MODE_AND 137 
#define  OP_IF_MODE_OR 136 
#define  OP_RD 135 
#define  OP_SW 134 
#define  OP_WB 133 
#define  OP_WB_ZR 132 
#define  OP_WR 131 
#define  OP_WR_64 130 
#define  OP_ZP 129 
#define  OP_ZR 128 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STAGE_END ; 
 int /*<<< orphan*/  STAGE_START ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,scalar_t__,scalar_t__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,scalar_t__,scalar_t__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*,scalar_t__,scalar_t__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2x*,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static void FUNC12(struct bnx2x *bp, u32 block, u32 stage)
{
	u16 op_start =
		FUNC4(bp)[FUNC0(block, stage,
						     STAGE_START)];
	u16 op_end =
		FUNC4(bp)[FUNC0(block, stage,
						     STAGE_END)];
	const union init_op *op;
	u32 op_idx, op_type, addr, len;
	const u32 *data, *data_base;

	/* If empty block */
	if (op_start == op_end)
		return;

	data_base = FUNC1(bp);

	for (op_idx = op_start; op_idx < op_end; op_idx++) {

		op = (const union init_op *)&(FUNC3(bp)[op_idx]);
		/* Get generic data */
		op_type = op->raw.op;
		addr = op->raw.offset;
		/* Get data that's used for OP_SW, OP_WB, OP_FW, OP_ZP and
		 * OP_WR64 (we assume that op_arr_write and op_write have the
		 * same structure).
		 */
		len = op->arr_wr.data_len;
		data = data_base + op->arr_wr.data_off;

		switch (op_type) {
		case OP_RD:
			FUNC5(bp, addr);
			break;
		case OP_WR:
			FUNC6(bp, addr, op->write.val);
			break;
		case OP_SW:
			FUNC8(bp, addr, data, len);
			break;
		case OP_WB:
			FUNC10(bp, addr, data, len);
			break;
		case OP_ZR:
			FUNC7(bp, addr, 0, op->zero.len, 0);
			break;
		case OP_WB_ZR:
			FUNC7(bp, addr, 0, op->zero.len, 1);
			break;
		case OP_ZP:
			FUNC11(bp, addr, len,
					 op->arr_wr.data_off);
			break;
		case OP_WR_64:
			FUNC9(bp, addr, data, len);
			break;
		case OP_IF_MODE_AND:
			/* if any of the flags doesn't match, skip the
			 * conditional block.
			 */
			if ((FUNC2(bp) &
				op->if_mode.mode_bit_map) !=
				op->if_mode.mode_bit_map)
				op_idx += op->if_mode.cmd_offset;
			break;
		case OP_IF_MODE_OR:
			/* if all the flags don't match, skip the conditional
			 * block.
			 */
			if ((FUNC2(bp) &
				op->if_mode.mode_bit_map) == 0)
				op_idx += op->if_mode.cmd_offset;
			break;
		default:
			/* Should never get here! */

			break;
		}
	}
}