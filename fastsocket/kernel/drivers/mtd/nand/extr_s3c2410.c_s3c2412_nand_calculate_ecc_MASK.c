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
typedef  unsigned long u_char ;
struct s3c2410_nand_info {scalar_t__ regs; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ S3C2412_NFMECC0 ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned long,unsigned long) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 struct s3c2410_nand_info* FUNC2 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC3(struct mtd_info *mtd, const u_char *dat, u_char *ecc_code)
{
	struct s3c2410_nand_info *info = FUNC2(mtd);
	unsigned long ecc = FUNC1(info->regs + S3C2412_NFMECC0);

	ecc_code[0] = ecc;
	ecc_code[1] = ecc >> 8;
	ecc_code[2] = ecc >> 16;

	FUNC0("calculate_ecc: returning ecc %02x,%02x,%02x\n", ecc_code[0], ecc_code[1], ecc_code[2]);

	return 0;
}