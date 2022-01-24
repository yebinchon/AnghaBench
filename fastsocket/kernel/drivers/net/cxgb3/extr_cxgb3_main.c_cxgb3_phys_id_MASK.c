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
typedef  int u32 ;
struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_T3DBG_GPIO_EN ; 
 int /*<<< orphan*/  F_GPIO0_OUT_VAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct port_info* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, u32 data)
{
	struct port_info *pi = FUNC1(dev);
	struct adapter *adapter = pi->adapter;
	int i;

	if (data == 0)
		data = 2;

	for (i = 0; i < data * 2; i++) {
		FUNC2(adapter, A_T3DBG_GPIO_EN, F_GPIO0_OUT_VAL,
				 (i & 1) ? F_GPIO0_OUT_VAL : 0);
		if (FUNC0(500))
			break;
	}
	FUNC2(adapter, A_T3DBG_GPIO_EN, F_GPIO0_OUT_VAL,
			 F_GPIO0_OUT_VAL);
	return 0;
}