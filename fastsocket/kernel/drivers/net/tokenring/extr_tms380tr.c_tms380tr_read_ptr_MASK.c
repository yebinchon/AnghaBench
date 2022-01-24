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
struct TYPE_2__ {scalar_t__ AdapterRAMPtr; int /*<<< orphan*/  BurnedInAddrPtr; } ;
struct net_local {TYPE_1__ intptrs; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAPTER_INT_PTRS ; 
 int FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short) ; 
 struct net_local* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct net_local *tp = FUNC2(dev);
	unsigned short adapterram;

	FUNC3(dev, (unsigned char *)&tp->intptrs.BurnedInAddrPtr,
			ADAPTER_INT_PTRS, 16);
	FUNC3(dev, (unsigned char *)&adapterram,
			FUNC1((unsigned short)tp->intptrs.AdapterRAMPtr), 2);
	return FUNC0(adapterram); 
}