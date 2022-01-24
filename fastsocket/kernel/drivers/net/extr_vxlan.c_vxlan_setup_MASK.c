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
struct TYPE_4__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct vxlan_dev {int port_min; int port_max; int /*<<< orphan*/ * fdb_head; struct net_device* dev; int /*<<< orphan*/  dst_port; TYPE_2__ age_timer; int /*<<< orphan*/  sock_work; int /*<<< orphan*/  igmp_leave; int /*<<< orphan*/  igmp_join; int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  next; } ;
struct net_device {int features; int vlan_features; int /*<<< orphan*/  priv_flags; scalar_t__ tx_queue_len; int /*<<< orphan*/  destructor; int /*<<< orphan*/ * netdev_ops; scalar_t__ hard_header_len; } ;
struct TYPE_3__ {int /*<<< orphan*/  ndo_fdb_dump; int /*<<< orphan*/  ndo_fdb_del; int /*<<< orphan*/  ndo_fdb_add; int /*<<< orphan*/  ext_priv_flags; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 unsigned int FDB_HASH_SIZE ; 
 int /*<<< orphan*/  IFF_LIVE_ADDR_CHANGE ; 
 int /*<<< orphan*/  IFF_XMIT_DST_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NETIF_F_GSO_SOFTWARE ; 
 int NETIF_F_HW_CSUM ; 
 int NETIF_F_HW_VLAN_RX ; 
 int NETIF_F_HW_VLAN_TX ; 
 int NETIF_F_LLTX ; 
 int NETIF_F_NETNS_LOCAL ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ VXLAN_HEADROOM ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  free_netdev ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_1__* FUNC9 (struct net_device*) ; 
 struct vxlan_dev* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vxlan_cleanup ; 
 int /*<<< orphan*/  vxlan_fdb_add ; 
 int /*<<< orphan*/  vxlan_fdb_delete ; 
 int /*<<< orphan*/  vxlan_fdb_dump ; 
 int /*<<< orphan*/  vxlan_igmp_join ; 
 int /*<<< orphan*/  vxlan_igmp_leave ; 
 int /*<<< orphan*/  vxlan_netdev_ops ; 
 int /*<<< orphan*/  vxlan_port ; 
 int /*<<< orphan*/  vxlan_sock_work ; 
 int /*<<< orphan*/  vxlan_type ; 

__attribute__((used)) static void FUNC12(struct net_device *dev)
{
	struct vxlan_dev *vxlan = FUNC10(dev);
	unsigned int h;
	int low, high;

	FUNC4(dev);
	FUNC5(dev);
	dev->hard_header_len = ETH_HLEN + VXLAN_HEADROOM;

	dev->netdev_ops = &vxlan_netdev_ops;
	dev->destructor = free_netdev;
	FUNC3(dev, &vxlan_type);

	dev->tx_queue_len = 0;
	dev->features	|= NETIF_F_LLTX;
	dev->features	|= NETIF_F_NETNS_LOCAL;
	dev->features	|= NETIF_F_SG | NETIF_F_HW_CSUM;
	dev->features   |= NETIF_F_RXCSUM;
	dev->features   |= NETIF_F_GSO_SOFTWARE;

	dev->vlan_features = dev->features;
	dev->features |= NETIF_F_HW_VLAN_TX | NETIF_F_HW_VLAN_RX;
	dev->priv_flags	&= ~IFF_XMIT_DST_RELEASE;
	FUNC9(dev)->ext_priv_flags |= IFF_LIVE_ADDR_CHANGE;
	FUNC9(dev)->ndo_fdb_add = vxlan_fdb_add;
	FUNC9(dev)->ndo_fdb_del = vxlan_fdb_delete;
	FUNC9(dev)->ndo_fdb_dump = vxlan_fdb_dump;

	FUNC1(&vxlan->next);
	FUNC11(&vxlan->hash_lock);
	FUNC2(&vxlan->igmp_join, vxlan_igmp_join);
	FUNC2(&vxlan->igmp_leave, vxlan_igmp_leave);
	FUNC2(&vxlan->sock_work, vxlan_sock_work);

	FUNC8(&vxlan->age_timer);
	vxlan->age_timer.function = vxlan_cleanup;
	vxlan->age_timer.data = (unsigned long) vxlan;

	FUNC7(&low, &high);
	vxlan->port_min = low;
	vxlan->port_max = high;
	vxlan->dst_port = FUNC6(vxlan_port);

	vxlan->dev = dev;

	for (h = 0; h < FDB_HASH_SIZE; ++h)
		FUNC0(&vxlan->fdb_head[h]);
}