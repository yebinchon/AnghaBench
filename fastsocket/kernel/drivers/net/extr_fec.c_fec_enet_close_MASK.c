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
struct fec_enet_private {scalar_t__ opened; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct fec_enet_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int
FUNC4(struct net_device *dev)
{
	struct fec_enet_private *fep = FUNC2(dev);

	/* Don't know what to do yet. */
	fep->opened = 0;
	FUNC3(dev);
	FUNC1(dev);

        FUNC0(dev);

	return 0;
}