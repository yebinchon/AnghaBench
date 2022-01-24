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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SGE_DBFIFO_STATUS ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC2 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 

unsigned int FUNC4(const struct net_device *dev, int lpfifo)
{
	struct adapter *adap = FUNC2(dev);
	u32 v;

	v = FUNC3(adap, A_SGE_DBFIFO_STATUS);
	return lpfifo ? FUNC1(v) : FUNC0(v);
}