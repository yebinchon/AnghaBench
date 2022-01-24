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
typedef  int /*<<< orphan*/  uint8_t ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  IO_ADDR_R; } ;
struct fsl_upm_nand {TYPE_1__ chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct fsl_upm_nand* FUNC1 (struct mtd_info*) ; 

__attribute__((used)) static uint8_t FUNC2(struct mtd_info *mtd)
{
	struct fsl_upm_nand *fun = FUNC1(mtd);

	return FUNC0(fun->chip.IO_ADDR_R);
}