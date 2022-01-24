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
struct dmae_command {int dst_addr_lo; int len; scalar_t__ dst_addr_hi; int /*<<< orphan*/  src_addr_hi; int /*<<< orphan*/  src_addr_lo; } ;
struct bnx2x {int /*<<< orphan*/  dmae_ready; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  DMAE_DST_GRC ; 
 int /*<<< orphan*/  DMAE_SRC_PCI ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int,int*,int) ; 
 int FUNC6 (struct bnx2x*,struct dmae_command*,int*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,struct dmae_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC9 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wb_comp ; 
 int /*<<< orphan*/ * wb_data ; 

void FUNC10(struct bnx2x *bp, dma_addr_t dma_addr, u32 dst_addr,
		      u32 len32)
{
	int rc;
	struct dmae_command dmae;

	if (!bp->dmae_ready) {
		u32 *data = FUNC9(bp, wb_data[0]);

		if (FUNC1(bp))
			FUNC4(bp, dst_addr, data, len32);
		else
			FUNC5(bp, dst_addr, data, len32);
		return;
	}

	/* set opcode and fixed command fields */
	FUNC8(bp, &dmae, DMAE_SRC_PCI, DMAE_DST_GRC);

	/* fill in addresses and len */
	dmae.src_addr_lo = FUNC3(dma_addr);
	dmae.src_addr_hi = FUNC2(dma_addr);
	dmae.dst_addr_lo = dst_addr >> 2;
	dmae.dst_addr_hi = 0;
	dmae.len = len32;

	/* issue the command and wait for completion */
	rc = FUNC6(bp, &dmae, FUNC9(bp, wb_comp));
	if (rc) {
		FUNC0("DMAE returned failure %d\n", rc);
		FUNC7();
	}
}