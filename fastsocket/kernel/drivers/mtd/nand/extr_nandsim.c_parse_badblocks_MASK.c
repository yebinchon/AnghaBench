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
struct TYPE_2__ {unsigned int secsz; } ;
struct nandsim {TYPE_1__ geom; } ;
struct mtd_info {scalar_t__ (* block_markbad ) (struct mtd_info*,unsigned int) ;} ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* badblocks ; 
 unsigned int FUNC1 (char*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mtd_info*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct nandsim *ns, struct mtd_info *mtd)
{
	char *w;
	int zero_ok;
	unsigned int erase_block_no;
	loff_t offset;

	if (!badblocks)
		return 0;
	w = badblocks;
	do {
		zero_ok = (*w == '0' ? 1 : 0);
		erase_block_no = FUNC1(w, &w, 0);
		if (!zero_ok && !erase_block_no) {
			FUNC0("invalid badblocks.\n");
			return -EINVAL;
		}
		offset = erase_block_no * ns->geom.secsz;
		if (mtd->block_markbad(mtd, offset)) {
			FUNC0("invalid badblocks.\n");
			return -EINVAL;
		}
		if (*w == ',')
			w += 1;
	} while (*w);
	return 0;
}