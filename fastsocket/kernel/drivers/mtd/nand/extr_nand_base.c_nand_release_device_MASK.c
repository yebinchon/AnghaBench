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
struct nand_chip {TYPE_1__* controller; int /*<<< orphan*/  state; int /*<<< orphan*/  (* select_chip ) (struct mtd_info*,int) ;} ;
struct mtd_info {struct nand_chip* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  wq; int /*<<< orphan*/ * active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FL_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mtd_info *mtd)
{
	struct nand_chip *chip = mtd->priv;

	/* De-select the NAND device */
	chip->select_chip(mtd, -1);

	/* Release the controller and the chip */
	FUNC0(&chip->controller->lock);
	chip->controller->active = NULL;
	chip->state = FL_READY;
	FUNC3(&chip->controller->wq);
	FUNC1(&chip->controller->lock);
}