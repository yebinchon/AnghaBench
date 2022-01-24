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
struct mtd_info {int dummy; } ;
struct davinci_nand_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NANDFSR_OFFSET ; 
 int FUNC1 (struct davinci_nand_info*,int /*<<< orphan*/ ) ; 
 struct davinci_nand_info* FUNC2 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC3(struct mtd_info *mtd)
{
	struct davinci_nand_info *info = FUNC2(mtd);

	return FUNC1(info, NANDFSR_OFFSET) & FUNC0(0);
}