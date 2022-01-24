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
typedef  int /*<<< orphan*/  u16 ;
struct tmio_nand {scalar_t__ fcr; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FCR_DATA ; 
 struct tmio_nand* FUNC0 (struct mtd_info*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static int
FUNC2(struct mtd_info *mtd, const u_char *buf, int len)
{
	struct tmio_nand *tmio = FUNC0(mtd);
	u16				*p = (u16 *) buf;

	for (len >>= 1; len; len--)
		if (*(p++) != FUNC1(tmio->fcr + FCR_DATA))
			return -EFAULT;
	return 0;
}