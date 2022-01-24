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
typedef  int u32 ;
struct dmae_command {int src_addr_lo; int len; int /*<<< orphan*/  dst_addr_hi; int /*<<< orphan*/  dst_addr_lo; scalar_t__ src_addr_hi; } ;
struct bnx2x {int /*<<< orphan*/  dmae_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  DMAE_DST_PCI ; 
 int /*<<< orphan*/  DMAE_SRC_GRC ; 
 int FUNC2 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct bnx2x*,struct dmae_command*,int*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,struct dmae_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct bnx2x*,int) ; 
 int* FUNC9 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wb_comp ; 
 int /*<<< orphan*/ * wb_data ; 

void FUNC11(struct bnx2x *bp, u32 src_addr, u32 len32)
{
	int rc;
	struct dmae_command dmae;

	if (!bp->dmae_ready) {
		u32 *data = FUNC9(bp, wb_data[0]);
		int i;

		if (FUNC1(bp))
			for (i = 0; i < len32; i++)
				data[i] = FUNC8(bp, src_addr + i*4);
		else
			for (i = 0; i < len32; i++)
				data[i] = FUNC2(bp, src_addr + i*4);

		return;
	}

	/* set opcode and fixed command fields */
	FUNC7(bp, &dmae, DMAE_SRC_GRC, DMAE_DST_PCI);

	/* fill in addresses and len */
	dmae.src_addr_lo = src_addr >> 2;
	dmae.src_addr_hi = 0;
	dmae.dst_addr_lo = FUNC4(FUNC10(bp, wb_data));
	dmae.dst_addr_hi = FUNC3(FUNC10(bp, wb_data));
	dmae.len = len32;

	/* issue the command and wait for completion */
	rc = FUNC5(bp, &dmae, FUNC9(bp, wb_comp));
	if (rc) {
		FUNC0("DMAE returned failure %d\n", rc);
		FUNC6();
	}
}