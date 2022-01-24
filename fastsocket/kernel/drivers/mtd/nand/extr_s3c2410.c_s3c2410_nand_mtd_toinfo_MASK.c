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
struct s3c2410_nand_info {int dummy; } ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {struct s3c2410_nand_info* info; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct mtd_info*) ; 

__attribute__((used)) static struct s3c2410_nand_info *FUNC1(struct mtd_info *mtd)
{
	return FUNC0(mtd)->info;
}