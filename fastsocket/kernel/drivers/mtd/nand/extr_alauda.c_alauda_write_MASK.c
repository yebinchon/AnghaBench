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
typedef  int /*<<< orphan*/  u_char ;
typedef  char u8 ;
typedef  scalar_t__ u32 ;
struct mtd_info {scalar_t__ writesize; struct alauda* priv; } ;
struct alauda {scalar_t__ bytemask; scalar_t__ pagemask; TYPE_1__* card; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ pageshift; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int FUNC0 (struct mtd_info*,scalar_t__) ; 
 int FUNC1 (struct mtd_info*,scalar_t__,void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*,int /*<<< orphan*/  const*,char*) ; 

__attribute__((used)) static int FUNC3(struct mtd_info *mtd, loff_t to, size_t len,
		size_t *retlen, const u_char *buf)
{
	struct alauda *al = mtd->priv;
	int err;

	if ((to & al->bytemask) || (len & al->bytemask))
		return -EINVAL;

	*retlen = len;
	while (len) {
		u32 page = (to >> al->card->pageshift) & al->pagemask;
		u8 oob[16] = {	'h', 'e', 'l', 'l', 'o', 0xff, 0xff, 0xff,
				0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff};

		/* don't write to bad blocks */
		if (page == 0) {
			err = FUNC0(mtd, to);
			if (err) {
				return -EIO;
			}
		}
		FUNC2(mtd, buf, &oob[13]);
		FUNC2(mtd, buf+256, &oob[8]);

		err = FUNC1(mtd, to, (void*)buf, oob);
		if (err)
			return err;

		buf += mtd->writesize;
		to += mtd->writesize;
		len -= mtd->writesize;
	}
	return 0;
}