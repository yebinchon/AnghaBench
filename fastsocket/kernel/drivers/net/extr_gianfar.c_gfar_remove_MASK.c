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
struct of_device {int /*<<< orphan*/  dev; } ;
struct gfar_private {int /*<<< orphan*/  ndev; int /*<<< orphan*/  regs; scalar_t__ tbi_node; scalar_t__ phy_node; } ;

/* Variables and functions */
 struct gfar_private* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct of_device *ofdev)
{
	struct gfar_private *priv = FUNC0(&ofdev->dev);

	if (priv->phy_node)
		FUNC4(priv->phy_node);
	if (priv->tbi_node)
		FUNC4(priv->tbi_node);

	FUNC1(&ofdev->dev, NULL);

	FUNC5(priv->ndev);
	FUNC3(priv->regs);
	FUNC2(priv->ndev);

	return 0;
}