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
struct s3c2410_nand_set {int dummy; } ;
struct s3c2410_nand_mtd {int /*<<< orphan*/  mtd; } ;
struct s3c2410_nand_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct s3c2410_nand_info *info,
				      struct s3c2410_nand_mtd *mtd,
				      struct s3c2410_nand_set *set)
{
	return FUNC0(&mtd->mtd);
}