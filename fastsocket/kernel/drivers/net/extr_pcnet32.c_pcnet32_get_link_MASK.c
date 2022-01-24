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
typedef  int /*<<< orphan*/  ulong ;
typedef  int u32 ;
struct TYPE_2__ {int (* read_bcr ) (int /*<<< orphan*/ ,int) ;} ;
struct pcnet32_private {scalar_t__ chip_version; int /*<<< orphan*/  lock; TYPE_1__ a; int /*<<< orphan*/  mii_if; scalar_t__ mii; } ;
struct net_device {int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 scalar_t__ PCNET32_79C970A ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct pcnet32_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32 FUNC5(struct net_device *dev)
{
	struct pcnet32_private *lp = FUNC1(dev);
	unsigned long flags;
	int r;

	FUNC2(&lp->lock, flags);
	if (lp->mii) {
		r = FUNC0(&lp->mii_if);
	} else if (lp->chip_version >= PCNET32_79C970A) {
		ulong ioaddr = dev->base_addr;	/* card base I/O address */
		r = (lp->a.read_bcr(ioaddr, 4) != 0xc0);
	} else {	/* can not detect link on really old chips */
		r = 1;
	}
	FUNC3(&lp->lock, flags);

	return r;
}