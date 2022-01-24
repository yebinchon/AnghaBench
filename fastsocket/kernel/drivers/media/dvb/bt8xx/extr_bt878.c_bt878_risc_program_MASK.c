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
typedef  scalar_t__ u32 ;
struct bt878 {scalar_t__ line_count; scalar_t__ line_bytes; scalar_t__ block_bytes; int block_count; scalar_t__ buf_dma; scalar_t__ risc_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT878_APACK_LEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ RISC_IRQ ; 
 scalar_t__ RISC_JUMP ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ RISC_SYNC ; 
 scalar_t__ RISC_SYNC_FM1 ; 
 scalar_t__ RISC_SYNC_VRO ; 
 scalar_t__ RISC_WRITE ; 
 scalar_t__ RISC_WR_EOL ; 
 scalar_t__ RISC_WR_SOL ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct bt878 *bt, u32 op_sync_orin)
{
	u32 buf_pos = 0;
	u32 line;

	FUNC0();
	FUNC1(RISC_SYNC | RISC_SYNC_FM1 | op_sync_orin);
	FUNC1(0);

	FUNC4("bt878: risc len lines %u, bytes per line %u\n",
			bt->line_count, bt->line_bytes);
	for (line = 0; line < bt->line_count; line++) {
		// At the beginning of every block we issue an IRQ with previous (finished) block number set
		if (!(buf_pos % bt->block_bytes))
			FUNC1(RISC_WRITE | RISC_WR_SOL | RISC_WR_EOL |
				   RISC_IRQ |
				   FUNC2(((buf_pos /
						 bt->block_bytes) +
						(bt->block_count -
						 1)) %
					       bt->block_count) | bt->
				   line_bytes);
		else
			FUNC1(RISC_WRITE | RISC_WR_SOL | RISC_WR_EOL |
				   bt->line_bytes);
		FUNC1(bt->buf_dma + buf_pos);
		buf_pos += bt->line_bytes;
	}

	FUNC1(RISC_SYNC | op_sync_orin | RISC_SYNC_VRO);
	FUNC1(0);

	FUNC1(RISC_JUMP);
	FUNC1(bt->risc_dma);

	FUNC3((bt->line_count << 16) | bt->line_bytes, BT878_APACK_LEN);
}