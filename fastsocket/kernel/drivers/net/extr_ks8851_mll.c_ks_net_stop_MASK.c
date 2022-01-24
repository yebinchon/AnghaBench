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
struct net_device {int /*<<< orphan*/  name; } ;
struct ks_net {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS_IER ; 
 int /*<<< orphan*/  KS_ISR ; 
 int /*<<< orphan*/  PMECR_PM_SOFTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ks_net*) ; 
 int /*<<< orphan*/  FUNC2 (struct ks_net*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ks_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ks_net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ks_net* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct ks_net*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev)
{
	struct ks_net *ks = FUNC7(netdev);

	if (FUNC8(ks))
		FUNC2(ks, "%s: shutting down\n", netdev->name);

	FUNC9(netdev);

	FUNC5(&ks->lock);

	/* turn off the IRQs and ack any outstanding */
	FUNC4(ks, KS_IER, 0x0000);
	FUNC4(ks, KS_ISR, 0xffff);

	/* shutdown RX/TX QMU */
	FUNC1(ks);

	/* set powermode to soft power down to save power */
	FUNC3(ks, PMECR_PM_SOFTDOWN);
	FUNC0(ks->irq, netdev);
	FUNC6(&ks->lock);
	return 0;
}