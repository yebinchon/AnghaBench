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
typedef  int /*<<< orphan*/  ulong ;
struct pcnet32_access {int (* read_bcr ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* write_bcr ) (int /*<<< orphan*/ ,int,int) ;} ;
struct pcnet32_private {int /*<<< orphan*/  blink_timer; int /*<<< orphan*/  lock; struct pcnet32_access a; } ;
struct net_device {int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCNET32_BLINK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pcnet32_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct pcnet32_private *lp = FUNC1(dev);
	struct pcnet32_access *a = &lp->a;
	ulong ioaddr = dev->base_addr;
	unsigned long flags;
	int i;

	FUNC2(&lp->lock, flags);
	for (i = 4; i < 8; i++) {
		a->write_bcr(ioaddr, i, a->read_bcr(ioaddr, i) ^ 0x4000);
	}
	FUNC3(&lp->lock, flags);

	FUNC0(&lp->blink_timer, PCNET32_BLINK_TIMEOUT);
}