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
typedef  int /*<<< orphan*/  u8 ;
struct mtd_info {int oobsize; scalar_t__ (* read ) (struct mtd_info*,unsigned int,int,size_t*,int /*<<< orphan*/ *) ;} ;
struct TYPE_2__ {struct mtd_info* mtd; } ;
struct NFTLrecord {TYPE_1__ mbd; } ;

/* Variables and functions */
 int SECTORSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC1 (struct mtd_info*,unsigned int,int,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mtd_info*,unsigned int,int,size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct NFTLrecord *nftl, unsigned int address, int len,
			      int check_oob)
{
	u8 buf[SECTORSIZE + nftl->mbd.mtd->oobsize];
	struct mtd_info *mtd = nftl->mbd.mtd;
	size_t retlen;
	int i;

	for (i = 0; i < len; i += SECTORSIZE) {
		if (mtd->read(mtd, address, SECTORSIZE, &retlen, buf))
			return -1;
		if (FUNC0(buf, 0xff, SECTORSIZE) != 0)
			return -1;

		if (check_oob) {
			if(FUNC1(mtd, address, mtd->oobsize,
					 &retlen, &buf[SECTORSIZE]) < 0)
				return -1;
			if (FUNC0(buf + SECTORSIZE, 0xff, mtd->oobsize) != 0)
				return -1;
		}
		address += SECTORSIZE;
	}

	return 0;
}