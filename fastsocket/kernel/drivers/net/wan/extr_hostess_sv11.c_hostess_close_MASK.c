#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  rx_function; } ;
struct z8530_dev {TYPE_1__ chanA; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct z8530_dev* FUNC0 (struct net_device*) ; 
 int dma ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  z8530_null_rx ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct net_device *d)
{
	struct z8530_dev *sv11 = FUNC0(d);
	/*
	 *	Discard new frames
	 */
	sv11->chanA.rx_function = z8530_null_rx;

	FUNC1(d);
	FUNC2(d);

	switch (dma) {
		case 0:
			FUNC3(d, &sv11->chanA);
			break;
		case 1:
			FUNC4(d, &sv11->chanA);
			break;
		case 2:
			FUNC5(d, &sv11->chanA);
			break;
	}
	return 0;
}