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
typedef  int uint16_t ;
struct nand_chip {int (* read_byte ) (struct mtd_info*) ;} ;
struct mtd_info {scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct mtd_info*) ; 
 int FUNC2 (struct mtd_info*) ; 

__attribute__((used)) static uint16_t FUNC3(struct mtd_info *mtd)
{
	struct nand_chip *chip = (struct nand_chip *)mtd->priv;

	FUNC0("read_word\n");

	return chip->read_byte(mtd) | (chip->read_byte(mtd) << 8);
}