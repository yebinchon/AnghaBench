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
struct ethtool_cmd {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbnet*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ethtool_cmd*) ; 

__attribute__((used)) static int FUNC3(struct usbnet *dev)
{
	struct ethtool_cmd ecmd;

	FUNC1(&dev->mii, 1, 1);
	FUNC2(&dev->mii, &ecmd);

	FUNC0(dev, "link_reset() speed: %d duplex: %d",
	       ecmd.speed, ecmd.duplex);

	return 0;
}