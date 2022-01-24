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
struct net_device {char* name; } ;
struct ifreq {int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  pc300dev_t ;
struct TYPE_2__ {scalar_t__ priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 

int FUNC7(struct net_device *dev)
{
	pc300dev_t *d = (pc300dev_t *) FUNC1(dev)->priv;
	struct ifreq ifr;
	int result;

#ifdef	PC300_DEBUG_OTHER
	printk("pc300: cpc_open");
#endif

	result = FUNC3(dev);

	if (result)
		return result;

	FUNC6(ifr.ifr_name, "%s", dev->name);
	result = FUNC0(d);
	if (result)
		goto err_out;

	FUNC4(dev);
	return 0;

err_out:
	FUNC2(dev);
	return result;
}