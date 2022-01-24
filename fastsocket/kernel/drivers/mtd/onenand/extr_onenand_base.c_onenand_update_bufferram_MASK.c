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
struct onenand_chip {int page_shift; TYPE_1__* bufferram; } ;
struct mtd_info {struct onenand_chip* priv; } ;
typedef  int loff_t ;
struct TYPE_2__ {int blockpage; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct onenand_chip*) ; 
 scalar_t__ FUNC1 (struct onenand_chip*) ; 
 unsigned int FUNC2 (struct onenand_chip*) ; 
 int FUNC3 (struct mtd_info*,int) ; 

__attribute__((used)) static void FUNC4(struct mtd_info *mtd, loff_t addr,
		int valid)
{
	struct onenand_chip *this = mtd->priv;
	int blockpage;
	unsigned int i;

	if (FUNC1(this))
		blockpage = FUNC3(mtd, addr);
	else
		blockpage = (int) (addr >> this->page_shift);

	/* Invalidate another BufferRAM */
	i = FUNC2(this);
	if (this->bufferram[i].blockpage == blockpage)
		this->bufferram[i].blockpage = -1;

	/* Update BufferRAM */
	i = FUNC0(this);
	if (valid)
		this->bufferram[i].blockpage = blockpage;
	else
		this->bufferram[i].blockpage = -1;
}