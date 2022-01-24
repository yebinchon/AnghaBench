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
struct mtd_info {struct cafe_priv* priv; } ;
struct cafe_priv {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uint8_t FUNC2(struct mtd_info *mtd)
{
	struct cafe_priv *cafe = mtd->priv;
	uint8_t d;

	FUNC1(mtd, &d, 1);
	FUNC0(&cafe->pdev->dev, "Read %02x\n", d);

	return d;
}