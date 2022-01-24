#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int mc_count; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int multicast_num_addrs; } ;
typedef  TYPE_1__ mace_private ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int pc_debug ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
  mace_private *lp = FUNC1(dev);

#ifdef PCMCIA_DEBUG
  if (pc_debug > 1) {
    static int old;
    if (dev->mc_count != old) {
      old = dev->mc_count;
      DEBUG(0, "%s: setting Rx mode to %d addresses.\n",
	    dev->name, old);
    }
  }
#endif

  lp->multicast_num_addrs = dev->mc_count;
  FUNC2(dev);

}