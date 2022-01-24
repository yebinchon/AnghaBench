#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  rx_function; } ;
struct z8530_dev {TYPE_1__ chanA; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct z8530_dev* FUNC0 (struct net_device*) ; 
 int dma ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  hostess_input ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,TYPE_1__*) ; 
 int FUNC5 (struct net_device*,TYPE_1__*) ; 
 int FUNC6 (struct net_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,TYPE_1__*) ; 
 int FUNC8 (struct net_device*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct net_device *d)
{
	struct z8530_dev *sv11 = FUNC0(d);
	int err = -1;

	/*
	 *	Link layer up
	 */
	switch (dma) {
		case 0:
			err = FUNC6(d, &sv11->chanA);
			break;
		case 1:
			err = FUNC5(d, &sv11->chanA);
			break;
		case 2:
			err = FUNC8(d, &sv11->chanA);
			break;
	}

	if (err)
		return err;

	err = FUNC1(d);
	if (err) {
		switch (dma) {
			case 0:
				FUNC3(d, &sv11->chanA);
				break;
			case 1:
				FUNC4(d, &sv11->chanA);
				break;
			case 2:
				FUNC7(d, &sv11->chanA);
				break;
		}
		return err;
	}
	sv11->chanA.rx_function = hostess_input;

	/*
	 *	Go go go
	 */

	FUNC2(d);
	return 0;
}