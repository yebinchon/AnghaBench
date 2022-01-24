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
typedef  scalar_t__ u_char ;
typedef  int /*<<< orphan*/  u16 ;
struct nand_chip {int /*<<< orphan*/  IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mtd_info *mtd, u_char byte)
{
	struct nand_chip *this = mtd->priv;
	FUNC2(FUNC1((u16) byte), this->IO_ADDR_W);
	FUNC0();
}