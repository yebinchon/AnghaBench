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
struct TYPE_4__ {int num; } ;
struct virtqueue {TYPE_2__ vring; TYPE_1__* dev; } ;
struct net_info {int /*<<< orphan*/  tunfd; } ;
struct iovec {int dummy; } ;
struct TYPE_3__ {struct net_info* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct virtqueue*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 unsigned int FUNC2 (struct virtqueue*,struct iovec*,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct iovec*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct virtqueue *vq)
{
	struct net_info *net_info = vq->dev->priv;
	unsigned int head, out, in;
	struct iovec iov[vq->vring.num];

	/* We usually wait in here for the Guest to give us a packet. */
	head = FUNC2(vq, iov, &out, &in);
	if (in)
		FUNC1(1, "Input buffers in net output queue?");
	/*
	 * Send the whole thing through to /dev/net/tun.  It expects the exact
	 * same format: what a coincidence!
	 */
	if (FUNC3(net_info->tunfd, iov, out) < 0)
		FUNC1(1, "Write to tun failed?");

	/*
	 * Done with that one; wait_for_vq_desc() will send the interrupt if
	 * all packets are processed.
	 */
	FUNC0(vq, head, 0);
}