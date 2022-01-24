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
struct nand_chip {int dummy; } ;
struct mtd_info {struct nand_chip* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FL_PM_SUSPENDED ; 
 int FUNC0 (struct nand_chip*,struct mtd_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct mtd_info *mtd)
{
	struct nand_chip *chip = mtd->priv;

	return FUNC0(chip, mtd, FL_PM_SUSPENDED);
}