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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fecp; } ;
struct fs_enet_private {TYPE_1__ fec; } ;
typedef  int /*<<< orphan*/  fec_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 struct fs_enet_private* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, void *p, int *sizep)
{
	struct fs_enet_private *fep = FUNC1(dev);

	if (*sizep < sizeof(fec_t))
		return -EINVAL;

	FUNC0(p, fep->fec.fecp, sizeof(fec_t));

	return 0;
}