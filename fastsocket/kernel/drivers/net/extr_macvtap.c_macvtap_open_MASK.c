#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct virtio_net_hdr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  sk_write_space; } ;
struct TYPE_11__ {int /*<<< orphan*/ * ops; struct file* file; int /*<<< orphan*/  state; int /*<<< orphan*/  type; int /*<<< orphan*/  wait; } ;
struct macvtap_queue {int flags; int vnet_hdr_sz; TYPE_3__ sk; TYPE_5__ sock; } ;
struct macvlan_dev {TYPE_2__* lowerdev; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_12__ {TYPE_1__* nsproxy; } ;
struct TYPE_9__ {int features; } ;
struct TYPE_8__ {struct net* net_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFF_NO_PI ; 
 int IFF_TAP ; 
 int IFF_VNET_HDR ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOCK_ZEROCOPY ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 TYPE_7__* current ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  macvtap_proto ; 
 int FUNC4 (struct net_device*,struct file*,struct macvtap_queue*) ; 
 int /*<<< orphan*/  macvtap_sock_write_space ; 
 int /*<<< orphan*/  macvtap_socket_ops ; 
 struct macvlan_dev* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct file *file)
{
	struct net *net = current->nsproxy->net_ns;
	struct net_device *dev = FUNC0(FUNC2(inode));
	struct macvlan_dev *vlan = FUNC5(dev);
	struct macvtap_queue *q;
	int err;

	err = -ENODEV;
	if (!dev)
		goto out;

	err = -ENOMEM;
	q = (struct macvtap_queue *)FUNC6(net, AF_UNSPEC, GFP_KERNEL,
					     &macvtap_proto);
	if (!q)
		goto out;

	FUNC3(&q->sock.wait);
	q->sock.type = SOCK_RAW;
	q->sock.state = SS_CONNECTED;
	q->sock.file = file;
	q->sock.ops = &macvtap_socket_ops;
	FUNC7(&q->sock, &q->sk);
	q->sk.sk_write_space = macvtap_sock_write_space;
	q->flags = IFF_VNET_HDR | IFF_NO_PI | IFF_TAP;
	q->vnet_hdr_sz = sizeof(struct virtio_net_hdr);

	/*
	 * so far only KVM virtio_net uses macvtap, enable zero copy between
	 * guest kernel and host kernel when lower device supports zerocopy
	 */
	if (vlan) {
		if ((vlan->lowerdev->features & NETIF_F_HIGHDMA) &&
		    (vlan->lowerdev->features & NETIF_F_SG))
			FUNC9(&q->sk, SOCK_ZEROCOPY);
	}

	err = FUNC4(dev, file, q);
	if (err)
		FUNC8(&q->sk);

out:
	if (dev)
		FUNC1(dev);

	return err;
}