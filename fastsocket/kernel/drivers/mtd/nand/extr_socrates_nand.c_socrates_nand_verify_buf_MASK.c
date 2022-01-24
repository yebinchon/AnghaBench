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
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ const FUNC0 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC1(struct mtd_info *mtd, const u8 *buf,
		int len)
{
	int i;

	for (i = 0; i < len; i++) {
		if (buf[i] != FUNC0(mtd))
			return -EFAULT;
	}
	return 0;
}