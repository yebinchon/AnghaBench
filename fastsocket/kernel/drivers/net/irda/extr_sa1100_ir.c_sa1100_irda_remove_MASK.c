#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  head; } ;
struct TYPE_3__ {int /*<<< orphan*/  head; } ;
struct sa1100_irda {TYPE_2__ rx_buff; TYPE_1__ tx_buff; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  Ser2HSCR0 ; 
 int /*<<< orphan*/  Ser2HSCR2 ; 
 int /*<<< orphan*/  Ser2UTCR0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sa1100_irda* FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct net_device *dev = FUNC4(pdev);

	if (dev) {
		struct sa1100_irda *si = FUNC3(dev);
		FUNC6(dev);
		FUNC2(si->tx_buff.head);
		FUNC2(si->rx_buff.head);
		FUNC1(dev);
	}

	FUNC5(FUNC0(Ser2HSCR2), 0x04);
	FUNC5(FUNC0(Ser2HSCR0), 0x1c);
	FUNC5(FUNC0(Ser2UTCR0), 0x24);

	return 0;
}