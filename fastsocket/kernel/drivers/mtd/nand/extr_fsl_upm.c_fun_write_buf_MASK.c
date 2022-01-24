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
struct TYPE_2__ {int /*<<< orphan*/  IO_ADDR_W; } ;
struct fsl_upm_nand {int wait_flags; TYPE_1__ chip; } ;

/* Variables and functions */
 int FSL_UPM_WAIT_WRITE_BUFFER ; 
 int FSL_UPM_WAIT_WRITE_BYTE ; 
 int /*<<< orphan*/  FUNC0 (struct fsl_upm_nand*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 struct fsl_upm_nand* FUNC2 (struct mtd_info*) ; 

__attribute__((used)) static void FUNC3(struct mtd_info *mtd, const uint8_t *buf, int len)
{
	struct fsl_upm_nand *fun = FUNC2(mtd);
	int i;

	for (i = 0; i < len; i++) {
		FUNC1(fun->chip.IO_ADDR_W, buf[i]);
		if (fun->wait_flags & FSL_UPM_WAIT_WRITE_BYTE)
			FUNC0(fun);
	}
	if (fun->wait_flags & FSL_UPM_WAIT_WRITE_BUFFER)
		FUNC0(fun);
}