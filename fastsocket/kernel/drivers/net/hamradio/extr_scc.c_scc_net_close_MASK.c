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
struct scc_channel {int /*<<< orphan*/  tx_wdog; int /*<<< orphan*/  tx_t; int /*<<< orphan*/  lock; int /*<<< orphan*/  ctrl; } ;
struct net_device {scalar_t__ ml_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R1 ; 
 int /*<<< orphan*/  R3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct scc_channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct scc_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct scc_channel *scc = (struct scc_channel *) dev->ml_priv;
	unsigned long flags;

	FUNC2(dev);

	FUNC4(&scc->lock, flags);	
	FUNC0(scc->ctrl,0);		/* Make sure pointer is written */
	FUNC6(scc,R1,0);			/* disable interrupts */
	FUNC6(scc,R3,0);
	FUNC5(&scc->lock, flags);

	FUNC1(&scc->tx_t);
	FUNC1(&scc->tx_wdog);
	
	FUNC3(scc);

	return 0;
}