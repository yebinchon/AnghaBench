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
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {TYPE_1__* pdev; scalar_t__ nar; int /*<<< orphan*/  mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  NAR ; 
 int /*<<< orphan*/  NL80211_IFTYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *dev)
{
	struct adm8211_priv *priv = dev->priv;

	priv->mode = NL80211_IFTYPE_UNSPECIFIED;
	priv->nar = 0;
	FUNC1(NAR, 0);
	FUNC1(IER, 0);
	FUNC0(NAR);

	FUNC3(priv->pdev->irq, dev);

	FUNC2(dev);
}