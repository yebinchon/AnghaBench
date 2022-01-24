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
struct sharpsl_nand {scalar_t__ io; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ ECCCLRR ; 
 struct sharpsl_nand* FUNC0 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mtd_info *mtd, int mode)
{
	struct sharpsl_nand *sharpsl = FUNC0(mtd);
	FUNC1(0, sharpsl->io + ECCCLRR);
}