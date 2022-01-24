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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct mtd_info {int dummy; } ;
struct bf5xx_nand_platform {scalar_t__ page_size; } ;
struct bf5xx_nand_info {int /*<<< orphan*/  device; struct bf5xx_nand_platform* platform; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct bf5xx_nand_info* FUNC6 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC7(struct mtd_info *mtd,
		const u_char *dat, u_char *ecc_code)
{
	struct bf5xx_nand_info *info = FUNC6(mtd);
	struct bf5xx_nand_platform *plat = info->platform;
	u16 page_size = (plat->page_size ? 512 : 256);
	u16 ecc0, ecc1;
	u32 code[2];
	u8 *p;

	/* first 4 bytes ECC code for 256 page size */
	ecc0 = FUNC0();
	ecc1 = FUNC1();

	code[0] = (ecc0 & 0x7ff) | ((ecc1 & 0x7ff) << 11);

	FUNC4(info->device, "returning ecc 0x%08x\n", code[0]);

	/* first 3 bytes in ecc_code for 256 page size */
	p = (u8 *) code;
	FUNC5(ecc_code, p, 3);

	/* second 4 bytes ECC code for 512 page size */
	if (page_size == 512) {
		ecc0 = FUNC2();
		ecc1 = FUNC3();
		code[1] = (ecc0 & 0x7ff) | ((ecc1 & 0x7ff) << 11);

		/* second 3 bytes in ecc_code for second 256
		 * bytes of 512 page size
		 */
		p = (u8 *) (code + 1);
		FUNC5((ecc_code + 3), p, 3);
		FUNC4(info->device, "returning ecc 0x%08x\n", code[1]);
	}

	return 0;
}