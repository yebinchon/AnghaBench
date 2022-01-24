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
typedef  int /*<<< orphan*/  uint8_t ;
struct mtd_info {int dummy; } ;
struct bf5xx_nand_platform {short page_size; } ;
struct bf5xx_nand_info {int /*<<< orphan*/  device; struct bf5xx_nand_platform* platform; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct mtd_info*,int /*<<< orphan*/  const*,int) ; 
 struct bf5xx_nand_info* FUNC3 (struct mtd_info*) ; 

__attribute__((used)) static void FUNC4(struct mtd_info *mtd,
				const uint8_t *buf, int len)
{
	struct bf5xx_nand_info *info = FUNC3(mtd);
	struct bf5xx_nand_platform *plat = info->platform;
	unsigned short page_size = (plat->page_size ? 512 : 256);

	FUNC2(info->device, "mtd->%p, buf->%p, len %d\n", mtd, buf, len);

	if (len == page_size)
		FUNC0(mtd, (uint8_t *)buf, 0);
	else
		FUNC1(mtd, buf, len);
}