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
struct net_device {int /*<<< orphan*/  irq; } ;
struct mv643xx_eth_private {int rxq_count; int txq_count; scalar_t__ txq; scalar_t__ rxq; int /*<<< orphan*/  rx_recycle; int /*<<< orphan*/  mib_counters_timer; int /*<<< orphan*/  rx_oom; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MASK ; 
 int /*<<< orphan*/  INT_MASK_EXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv643xx_eth_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mv643xx_eth_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mv643xx_eth_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev)
{
	struct mv643xx_eth_private *mp = FUNC5(dev);
	int i;

	FUNC12(mp, INT_MASK_EXT, 0x00000000);
	FUNC12(mp, INT_MASK, 0x00000000);
	FUNC8(mp, INT_MASK);

	FUNC4(&mp->napi);

	FUNC0(&mp->rx_oom);

	FUNC6(dev);

	FUNC1(dev->irq, dev);

	FUNC7(mp);
	FUNC3(dev);
	FUNC2(mp);
	FUNC0(&mp->mib_counters_timer);

	FUNC10(&mp->rx_recycle);

	for (i = 0; i < mp->rxq_count; i++)
		FUNC9(mp->rxq + i);
	for (i = 0; i < mp->txq_count; i++)
		FUNC11(mp->txq + i);

	return 0;
}