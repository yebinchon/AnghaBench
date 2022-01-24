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
struct macvlan_dev {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct macvlan_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  minor_idr ; 
 int /*<<< orphan*/  minor_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct net_device *FUNC4(int minor)
{
       struct net_device *dev = NULL;
       struct macvlan_dev *vlan;

       FUNC2(&minor_lock);
       vlan = FUNC1(&minor_idr, minor);
       if (vlan) {
               dev = vlan->dev;
               FUNC0(dev);
       }
       FUNC3(&minor_lock);
       return dev;
}