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
struct adapter {int /*<<< orphan*/  mbox; } ;

/* Variables and functions */
 scalar_t__ A_SGE_CTXT_CMD ; 
 struct adapter* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct adapter*,int /*<<< orphan*/ ,scalar_t__,int) ; 

int FUNC2(struct net_device *dev)
{
	struct adapter *adap = FUNC0(dev);
	int ret;

	ret = FUNC1(adap, adap->mbox,
				   0xe1000000 + A_SGE_CTXT_CMD, 0x20000000);
	return ret;
}