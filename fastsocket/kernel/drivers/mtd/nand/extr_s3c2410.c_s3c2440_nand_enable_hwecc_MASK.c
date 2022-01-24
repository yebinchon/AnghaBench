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
struct s3c2410_nand_info {scalar_t__ regs; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ S3C2440_NFCONT ; 
 unsigned long S3C2440_NFCONT_INITECC ; 
 unsigned long FUNC0 (scalar_t__) ; 
 struct s3c2410_nand_info* FUNC1 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mtd_info *mtd, int mode)
{
	struct s3c2410_nand_info *info = FUNC1(mtd);
	unsigned long ctrl;

	ctrl = FUNC0(info->regs + S3C2440_NFCONT);
	FUNC2(ctrl | S3C2440_NFCONT_INITECC, info->regs + S3C2440_NFCONT);
}