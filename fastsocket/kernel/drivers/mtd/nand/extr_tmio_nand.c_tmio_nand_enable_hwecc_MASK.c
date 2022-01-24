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
struct tmio_nand {scalar_t__ fcr; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FCR_DATA ; 
 scalar_t__ FCR_MODE ; 
 int /*<<< orphan*/  FCR_MODE_HWECC_CALC ; 
 int /*<<< orphan*/  FCR_MODE_HWECC_RESET ; 
 struct tmio_nand* FUNC0 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mtd_info *mtd, int mode)
{
	struct tmio_nand *tmio = FUNC0(mtd);

	FUNC2(FCR_MODE_HWECC_RESET, tmio->fcr + FCR_MODE);
	FUNC1(tmio->fcr + FCR_DATA);	/* dummy read */
	FUNC2(FCR_MODE_HWECC_CALC, tmio->fcr + FCR_MODE);
}