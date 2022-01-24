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
 scalar_t__ S3C2412_NFSTAT ; 
 int S3C2412_NFSTAT_READY ; 
 int FUNC0 (scalar_t__) ; 
 struct s3c2410_nand_info* FUNC1 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC2(struct mtd_info *mtd)
{
	struct s3c2410_nand_info *info = FUNC1(mtd);
	return FUNC0(info->regs + S3C2412_NFSTAT) & S3C2412_NFSTAT_READY;
}