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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct adapter {int /*<<< orphan*/  fn; } ;
struct TYPE_2__ {int /*<<< orphan*/  viid; } ;

/* Variables and functions */
 struct adapter* FUNC0 (struct net_device*) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, u32 data)
{
	struct adapter *adap = FUNC0(dev);

	if (data == 0)
		data = 2;     /* default to 2 seconds */

	return FUNC2(adap, adap->fn, FUNC1(dev)->viid,
				data * 5);
}