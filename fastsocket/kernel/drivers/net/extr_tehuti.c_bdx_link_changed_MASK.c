#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct bdx_priv {TYPE_1__* ndev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int MAC_LINK_STAT ; 
 int FUNC1 (struct bdx_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  regMAC_LNK_STAT ; 

__attribute__((used)) static void FUNC7(struct bdx_priv *priv)
{
	u32 link = FUNC1(priv, regMAC_LNK_STAT) & MAC_LINK_STAT;

	if (!link) {
		if (FUNC3(priv->ndev)) {
			FUNC5(priv->ndev);
			FUNC2(priv->ndev);
			FUNC0("%s: Link Down\n", priv->ndev->name);
		}
	} else {
		if (!FUNC3(priv->ndev)) {
			FUNC6(priv->ndev);
			FUNC4(priv->ndev);
			FUNC0("%s: Link Up\n", priv->ndev->name);
		}
	}
}