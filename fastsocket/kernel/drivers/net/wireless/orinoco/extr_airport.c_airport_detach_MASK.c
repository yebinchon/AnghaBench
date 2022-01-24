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
struct orinoco_private {struct airport* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct macio_dev {TYPE_1__ ofdev; } ;
struct airport {int /*<<< orphan*/ * vaddr; scalar_t__ irq_requested; int /*<<< orphan*/  irq; scalar_t__ ndev_registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMAC_FTR_AIRPORT_ENABLE ; 
 struct orinoco_private* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct orinoco_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct orinoco_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct macio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct macio_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct orinoco_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(struct macio_dev *mdev)
{
	struct orinoco_private *priv = FUNC0(&mdev->ofdev.dev);
	struct airport *card = priv->card;

	if (card->ndev_registered)
		FUNC7(priv);
	card->ndev_registered = 0;

	if (card->irq_requested)
		FUNC1(card->irq, priv);
	card->irq_requested = 0;

	if (card->vaddr)
		FUNC3(card->vaddr);
	card->vaddr = NULL;

	FUNC5(mdev, 0);

	FUNC8(PMAC_FTR_AIRPORT_ENABLE,
			  FUNC4(mdev), 0, 0);
	FUNC9(1);

	FUNC6(mdev, NULL);
	FUNC2(priv);

	return 0;
}