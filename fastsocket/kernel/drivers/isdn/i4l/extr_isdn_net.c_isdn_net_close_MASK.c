#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct concap_proto {TYPE_2__* pops; } ;
struct TYPE_6__ {TYPE_1__* netdev; } ;
typedef  TYPE_3__ isdn_net_local ;
struct TYPE_5__ {int /*<<< orphan*/  (* close ) (struct concap_proto*) ;} ;
struct TYPE_4__ {struct concap_proto* cprot; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct concap_proto*) ; 
 int /*<<< orphan*/  FUNC6 (struct concap_proto*) ; 

__attribute__((used)) static int
FUNC7(struct net_device *dev)
{
	struct net_device *p;
#ifdef CONFIG_ISDN_X25
	struct concap_proto * cprot =
		((isdn_net_local *) netdev_priv(dev))->netdev->cprot;
	/* printk(KERN_DEBUG "isdn_net_close %s\n" , dev-> name ); */
#endif

#ifdef CONFIG_ISDN_X25
	if( cprot && cprot -> pops ) cprot -> pops -> close( cprot );
#endif
	FUNC4(dev);
	p = FUNC0(dev);
	if (p) {
		/* If this interface has slaves, stop them also */
		while (p) {
#ifdef CONFIG_ISDN_X25
			cprot = ((isdn_net_local *) netdev_priv(p))
				-> netdev -> cprot;
			if( cprot && cprot -> pops )
				cprot -> pops -> close( cprot );
#endif
			FUNC1(p);
			p = FUNC0(p);
		}
	}
	FUNC1(dev);
	FUNC2();
	return 0;
}