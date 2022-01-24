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
struct nftl_uci1 {int EraseMark; int EraseMark1; unsigned int WearInfo; } ;
struct mtd_info {int /*<<< orphan*/  (* block_markbad ) (struct mtd_info*,int) ;int /*<<< orphan*/  (* erase ) (struct mtd_info*,struct erase_info*) ;} ;
struct erase_info {int addr; int len; scalar_t__ state; struct mtd_info* mtd; } ;
struct TYPE_2__ {struct mtd_info* mtd; } ;
struct NFTLrecord {int EraseSize; TYPE_1__ mbd; struct erase_info instr; } ;

/* Variables and functions */
 unsigned int ERASE_MARK ; 
 scalar_t__ MTD_ERASE_FAILED ; 
 scalar_t__ SECTORSIZE ; 
 scalar_t__ FUNC0 (struct NFTLrecord*,int,int,int) ; 
 void* FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int) ; 
 void* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct erase_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct mtd_info*,scalar_t__,int,size_t*,char*) ; 
 scalar_t__ FUNC7 (struct mtd_info*,scalar_t__,int,size_t*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mtd_info*,struct erase_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct mtd_info*,int) ; 

int FUNC11(struct NFTLrecord *nftl, int block)
{
	size_t retlen;
	unsigned int nb_erases, erase_mark;
	struct nftl_uci1 uci;
	struct erase_info *instr = &nftl->instr;
	struct mtd_info *mtd = nftl->mbd.mtd;

	/* Read the Unit Control Information #1 for Wear-Leveling */
	if (FUNC6(mtd, block * nftl->EraseSize + SECTORSIZE + 8,
			  8, &retlen, (char *)&uci) < 0)
		goto default_uci1;

	erase_mark = FUNC3 ((uci.EraseMark | uci.EraseMark1));
	if (erase_mark != ERASE_MARK) {
	default_uci1:
		uci.EraseMark = FUNC1(ERASE_MARK);
		uci.EraseMark1 = FUNC1(ERASE_MARK);
		uci.WearInfo = FUNC2(0);
	}

	FUNC5(instr, 0, sizeof(struct erase_info));

	/* XXX: use async erase interface, XXX: test return code */
	instr->mtd = nftl->mbd.mtd;
	instr->addr = block * nftl->EraseSize;
	instr->len = nftl->EraseSize;
	mtd->erase(mtd, instr);

	if (instr->state == MTD_ERASE_FAILED) {
		FUNC8("Error while formatting block %d\n", block);
		goto fail;
	}

		/* increase and write Wear-Leveling info */
		nb_erases = FUNC4(uci.WearInfo);
		nb_erases++;

		/* wrap (almost impossible with current flashs) or free block */
		if (nb_erases == 0)
			nb_erases = 1;

		/* check the "freeness" of Erase Unit before updating metadata
		 * FixMe:  is this check really necessary ? since we have check the
		 *         return code after the erase operation. */
		if (FUNC0(nftl, instr->addr, nftl->EraseSize, 1) != 0)
			goto fail;

		uci.WearInfo = FUNC4(nb_erases);
		if (FUNC7(mtd, block * nftl->EraseSize + SECTORSIZE +
				   8, 8, &retlen, (char *)&uci) < 0)
			goto fail;
		return 0;
fail:
	/* could not format, update the bad block table (caller is responsible
	   for setting the ReplUnitTable to BLOCK_RESERVED on failure) */
	nftl->mbd.mtd->block_markbad(nftl->mbd.mtd, instr->addr);
	return -1;
}