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
typedef  int uint32_t ;
struct mtd_info {struct cafe_priv* priv; } ;
struct cafe_priv {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLOBAL_IRQ ; 
 int /*<<< orphan*/  GLOBAL_IRQ_MASK ; 
 int /*<<< orphan*/  NAND_IRQ ; 
 int /*<<< orphan*/  NAND_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int,int,int,int) ; 
 int FUNC1 (struct cafe_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cafe_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mtd_info *mtd)
{
	struct cafe_priv *cafe = mtd->priv;
	int result = !!(FUNC1(cafe, NAND_STATUS) | 0x40000000);
	uint32_t irqs = FUNC1(cafe, NAND_IRQ);

	FUNC2(cafe, irqs, NAND_IRQ);

	FUNC0(&cafe->pdev->dev, "NAND device is%s ready, IRQ %x (%x) (%x,%x)\n",
		result?"":" not", irqs, FUNC1(cafe, NAND_IRQ),
		FUNC1(cafe, GLOBAL_IRQ), FUNC1(cafe, GLOBAL_IRQ_MASK));

	return result;
}