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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct asd_ha_struct {int /*<<< orphan*/  pcidev; } ;
struct asd_dma_tok {int /*<<< orphan*/  dma_handle; int /*<<< orphan*/  vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  CHIMINT ; 
 int /*<<< orphan*/  CHIMINTEN ; 
 int CHIMINT_MASK ; 
 int /*<<< orphan*/  COMSTAT ; 
 int /*<<< orphan*/  COMSTATEN ; 
 int COMSTAT_MASK ; 
 int DEVEXCEPT_MASK ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_DMA_OVLY_COUNT ; 
 int OVLYCSEQ ; 
 int OVLYDMAACT ; 
 int /*<<< orphan*/  OVLYDMAADR ; 
 int /*<<< orphan*/  OVLYDMACNT ; 
 int /*<<< orphan*/  OVLYDMACTL ; 
 int OVLYDMADONE ; 
 int OVLYERR ; 
 int OVLYHALTERR ; 
 int /*<<< orphan*/  PAUSE_DELAY ; 
 int PAUSE_TRIES ; 
 int RESETOVLYDMA ; 
 int RST_CHIMINTEN ; 
 int STARTOVLYDMA ; 
 struct asd_dma_tok* FUNC1 (struct asd_ha_struct*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct asd_ha_struct*,struct asd_dma_tok*) ; 
 int /*<<< orphan*/  FUNC3 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct asd_ha_struct*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (struct asd_ha_struct*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct asd_ha_struct*,scalar_t__ const* const,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct asd_ha_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct asd_ha_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__ const* const,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct asd_ha_struct *asd_ha,
			    const u8 * const prog, u32 size, u8 lseq_mask)
{
	u32 comstaten;
	u32 reg;
	int page;
	const int pages = (size + MAX_DMA_OVLY_COUNT - 1) / MAX_DMA_OVLY_COUNT;
	struct asd_dma_tok *token;
	int err = 0;

	if (size % 4) {
		FUNC5("sequencer program not multiple of 4\n");
		return -1;
	}

	FUNC3(asd_ha);
	FUNC4(asd_ha, 0xFF);

	/* save, disable and clear interrupts */
	comstaten = FUNC6(asd_ha, COMSTATEN);
	FUNC9(asd_ha, COMSTATEN, 0);
	FUNC9(asd_ha, COMSTAT, COMSTAT_MASK);

	FUNC9(asd_ha, CHIMINTEN, RST_CHIMINTEN);
	FUNC9(asd_ha, CHIMINT, CHIMINT_MASK);

	token = FUNC1(asd_ha, MAX_DMA_OVLY_COUNT, GFP_KERNEL);
	if (!token) {
		FUNC5("out of memory for dma SEQ download\n");
		err = -ENOMEM;
		goto out;
	}
	FUNC0("dma-ing %d bytes\n", size);

	for (page = 0; page < pages; page++) {
		int i;
		u32 left = FUNC11(size-page*MAX_DMA_OVLY_COUNT,
			       (u32)MAX_DMA_OVLY_COUNT);

		FUNC10(token->vaddr, prog + page*MAX_DMA_OVLY_COUNT, left);
		FUNC8(asd_ha, OVLYDMAADR, token->dma_handle);
		FUNC9(asd_ha, OVLYDMACNT, left);
		reg = !page ? RESETOVLYDMA : 0;
		reg |= (STARTOVLYDMA | OVLYHALTERR);
		reg |= (lseq_mask ? (((u32)lseq_mask) << 8) : OVLYCSEQ);
		/* Start DMA. */
		FUNC9(asd_ha, OVLYDMACTL, reg);

		for (i = PAUSE_TRIES*100; i > 0; i--) {
			u32 dmadone = FUNC6(asd_ha, OVLYDMACTL);
			if (!(dmadone & OVLYDMAACT))
				break;
			FUNC13(PAUSE_DELAY);
		}
	}

	reg = FUNC6(asd_ha, COMSTAT);
	if (!(reg & OVLYDMADONE) || (reg & OVLYERR)
	    || (FUNC6(asd_ha, CHIMINT) & DEVEXCEPT_MASK)){
		FUNC5("%s: error DMA-ing sequencer code\n",
			   FUNC12(asd_ha->pcidev));
		err = -ENODEV;
	}

	FUNC2(asd_ha, token);
 out:
	FUNC9(asd_ha, COMSTATEN, comstaten);

	return err ? : FUNC7(asd_ha, prog, size, lseq_mask);
}