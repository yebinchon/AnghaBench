#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;
struct iw_cm_id {TYPE_2__ remote_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct iw_cm_id *cm_id)
{
	struct net_device *dev;

	dev = FUNC1(&init_net, cm_id->remote_addr.sin_addr.s_addr);
	if (!dev)
		return 0;
	FUNC0(dev);
	return 1;
}