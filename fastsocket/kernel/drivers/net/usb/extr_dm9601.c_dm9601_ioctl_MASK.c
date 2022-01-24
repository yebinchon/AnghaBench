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
struct usbnet {int /*<<< orphan*/  mii; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*) ; 
 struct usbnet* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *net, struct ifreq *rq, int cmd)
{
	struct usbnet *dev = FUNC2(net);

	return FUNC0(&dev->mii, FUNC1(rq), cmd, NULL);
}