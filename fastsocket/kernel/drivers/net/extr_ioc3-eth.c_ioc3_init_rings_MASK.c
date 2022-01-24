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
struct net_device {int dummy; } ;
struct ioc3_private {int rx_ci; int rx_pi; int tx_pi; int tx_ci; scalar_t__ txqlen; int /*<<< orphan*/  txr; int /*<<< orphan*/  rxr; struct ioc3* regs; } ;
struct ioc3 {int dummy; } ;

/* Variables and functions */
 int ERPIR_ARM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ioc3_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct ioc3_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct ioc3_private*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 struct ioc3_private* FUNC14 (struct net_device*) ; 

__attribute__((used)) static void FUNC15(struct net_device *dev)
{
	struct ioc3_private *ip = FUNC14(dev);
	struct ioc3 *ioc3 = ip->regs;
	unsigned long ring;

	FUNC3(ip);
	FUNC0(dev);

	FUNC1(ip);
	FUNC2(ip);

	/* Now the rx ring base, consume & produce registers.  */
	ring = FUNC4(ip->rxr, 0);
	FUNC6(ring >> 32);
	FUNC7(ring & 0xffffffff);
	FUNC8(ip->rx_ci << 3);
	FUNC9((ip->rx_pi << 3) | ERPIR_ARM);

	ring = FUNC4(ip->txr, 0);

	ip->txqlen = 0;					/* nothing queued  */

	/* Now the tx ring base, consume & produce registers.  */
	FUNC10(ring >> 32);
	FUNC11(ring & 0xffffffff);
	FUNC13(ip->tx_pi << 7);
	FUNC12(ip->tx_ci << 7);
	(void) FUNC5();				/* Flush */
}