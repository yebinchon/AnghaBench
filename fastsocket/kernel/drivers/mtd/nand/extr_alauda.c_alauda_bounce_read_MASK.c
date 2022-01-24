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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  u8 ;
struct mtd_info {scalar_t__ writesize; struct alauda* priv; } ;
struct alauda {size_t bytemask; } ;
typedef  size_t loff_t ;

/* Variables and functions */
 int EBADMSG ; 
 int ENOMEM ; 
 int EUCLEAN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct mtd_info*,size_t,void*,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,size_t) ; 
 size_t FUNC4 (size_t,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct mtd_info *mtd, loff_t from, size_t len,
		size_t *retlen, u_char *buf)
{
	struct alauda *al = mtd->priv;
	void *bounce_buf;
	int err, corrected=0, uncorrected=0;

	bounce_buf = FUNC2(mtd->writesize, GFP_KERNEL);
	if (!bounce_buf)
		return -ENOMEM;

	*retlen = len;
	while (len) {
		u8 oob[16];
		size_t byte = from & al->bytemask;
		size_t cplen = FUNC4(len, mtd->writesize - byte);

		err = FUNC0(mtd, from, bounce_buf, oob,
				&corrected, &uncorrected);
		if (err)
			goto out;

		FUNC3(buf, bounce_buf + byte, cplen);
		buf += cplen;
		from += cplen;
		len -= cplen;
	}
	err = 0;
	if (corrected)
		err = -EUCLEAN;
	if (uncorrected)
		err = -EBADMSG;
out:
	FUNC1(bounce_buf);
	return err;
}