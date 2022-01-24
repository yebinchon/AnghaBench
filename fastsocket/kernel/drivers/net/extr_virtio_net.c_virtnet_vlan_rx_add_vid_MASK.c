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
typedef  int /*<<< orphan*/  vid ;
typedef  int /*<<< orphan*/  u16 ;
struct virtnet_info {int dummy; } ;
struct scatterlist {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_NET_CTRL_VLAN ; 
 int /*<<< orphan*/  VIRTIO_NET_CTRL_VLAN_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct virtnet_info* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct virtnet_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, u16 vid)
{
	struct virtnet_info *vi = FUNC1(dev);
	struct scatterlist sg;

	FUNC2(&sg, &vid, sizeof(vid));

	if (!FUNC3(vi, VIRTIO_NET_CTRL_VLAN,
				  VIRTIO_NET_CTRL_VLAN_ADD, &sg, 1, 0))
		FUNC0(&dev->dev, "Failed to add VLAN ID %d.\n", vid);
}