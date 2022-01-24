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
struct rtl8169_private {int /*<<< orphan*/  mmio_addr; int /*<<< orphan*/  napi; scalar_t__ RxDescArray; struct net_device* dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int NUM_RX_DESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  rx_buf_sz ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(struct rtl8169_private *tp)
{
	struct net_device *dev = tp->dev;
	int i;

	FUNC0(&tp->napi);
	FUNC2(dev);
	FUNC10();

	FUNC5(tp);

	for (i = 0; i < NUM_RX_DESC; i++)
		FUNC7(tp->RxDescArray + i, rx_buf_sz);

	FUNC8(tp);
	FUNC6(tp);

	FUNC1(&tp->napi);
	FUNC9(dev);
	FUNC3(dev);
	FUNC4(dev, tp, tp->mmio_addr);
}