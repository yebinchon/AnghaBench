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
struct net_device {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  ipg_timer; } ;
struct amd8111e_priv {int options; scalar_t__ opened; int /*<<< orphan*/  lock; TYPE_1__ ipg_data; int /*<<< orphan*/  amd8111e_net_dev; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int OPTION_DYN_IPG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct amd8111e_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct amd8111e_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amd8111e_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct amd8111e_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct net_device * dev)
{
	struct amd8111e_priv *lp = FUNC8(dev);
	FUNC10(dev);

	FUNC7(&lp->napi);

	FUNC11(&lp->lock);

	FUNC0(lp);
	FUNC4(lp);

	/* Free transmit and receive skbs */
	FUNC2(lp->amd8111e_net_dev);

	FUNC9(lp->amd8111e_net_dev);

	/* Delete ipg timer */
	if(lp->options & OPTION_DYN_IPG_ENABLE)
		FUNC5(&lp->ipg_data.ipg_timer);

	FUNC12(&lp->lock);
	FUNC6(dev->irq, dev);
	FUNC1(lp);

	/* Update the statistics before closing */
	FUNC3(dev);
	lp->opened = 0;
	return 0;
}