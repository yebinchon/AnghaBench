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
struct ethtool_regs {int version; } ;
struct de_private {int de21040; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int DE_REGS_VER ; 
 int /*<<< orphan*/  FUNC0 (struct de_private*,void*) ; 
 struct de_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, struct ethtool_regs *regs,
			void *data)
{
	struct de_private *de = FUNC1(dev);

	regs->version = (DE_REGS_VER << 2) | de->de21040;

	FUNC2(&de->lock);
	FUNC0(de, data);
	FUNC3(&de->lock);
}