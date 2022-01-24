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
struct mtd_info {scalar_t__ size; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct mtd_info*,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct mtd_info *mtd, loff_t offs)
{
	/* Check for invalid offset */
	if (offs > mtd->size)
		return -EINVAL;

	return FUNC0(mtd, offs, 1, 0);
}