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
struct fst_port_info {scalar_t__ mode; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FST_RAW ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct fst_port_info* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct fst_port_info*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev)
{
	int err;
	struct fst_port_info *port;

	port = FUNC0(dev);
	if (!FUNC4(THIS_MODULE))
          return -EBUSY;

	if (port->mode != FST_RAW) {
		err = FUNC2(dev);
		if (err)
			return err;
	}

	FUNC1(port);
	FUNC3(dev);
	return 0;
}