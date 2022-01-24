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
struct s3c2410_nand_info {scalar_t__ regs; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ S3C2440_NFDATA ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 struct s3c2410_nand_info* FUNC2 (struct mtd_info*) ; 

__attribute__((used)) static void FUNC3(struct mtd_info *mtd, u_char *buf, int len)
{
	struct s3c2410_nand_info *info = FUNC2(mtd);

	FUNC1(info->regs + S3C2440_NFDATA, buf, len >> 2);

	/* cleanup if we've got less than a word to do */
	if (len & 3) {
		buf += len & ~3;

		for (; len & 3; len--)
			*buf++ = FUNC0(info->regs + S3C2440_NFDATA);
	}
}