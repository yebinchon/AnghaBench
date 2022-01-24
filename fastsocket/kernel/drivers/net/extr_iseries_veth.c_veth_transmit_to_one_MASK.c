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
struct veth_port {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__* len; int eofmask; int /*<<< orphan*/ * addr; } ;
struct veth_msg {int in_use; TYPE_1__ data; int /*<<< orphan*/  token; int /*<<< orphan*/  dev; int /*<<< orphan*/  skb; } ;
struct veth_lpar_connection {int state; scalar_t__ outstanding_tx; int /*<<< orphan*/  lock; scalar_t__ last_contact; scalar_t__ reset_timeout; int /*<<< orphan*/  reset_timer; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
typedef  size_t HvLpIndex ;
typedef  scalar_t__ HvLpEvent_Rc ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ ETH_HLEN ; 
 scalar_t__ HvLpEvent_Rc_Good ; 
 int VETH_EOF_SHIFT ; 
 int /*<<< orphan*/  VETH_EVENT_FRAMES ; 
 scalar_t__ VETH_MAX_MTU ; 
 int VETH_STATE_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct veth_port* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct veth_lpar_connection** veth_cnx ; 
 int /*<<< orphan*/  FUNC7 (struct veth_lpar_connection*,struct veth_msg*) ; 
 scalar_t__ FUNC8 (struct veth_lpar_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC9 (struct veth_lpar_connection*) ; 
 struct veth_msg* FUNC10 (struct veth_lpar_connection*) ; 
 int /*<<< orphan*/  FUNC11 (struct veth_lpar_connection*) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, HvLpIndex rlp,
				struct net_device *dev)
{
	struct veth_lpar_connection *cnx = veth_cnx[rlp];
	struct veth_port *port = FUNC3(dev);
	HvLpEvent_Rc rc;
	struct veth_msg *msg = NULL;
	unsigned long flags;

	if (! cnx)
		return 0;

	FUNC5(&cnx->lock, flags);

	if (! (cnx->state & VETH_STATE_READY))
		goto no_error;

	if ((skb->len - ETH_HLEN) > VETH_MAX_MTU)
		goto drop;

	msg = FUNC10(cnx);
	if (! msg)
		goto drop;

	msg->in_use = 1;
	msg->skb = FUNC4(skb);

	msg->data.addr[0] = FUNC0(port->dev, skb->data,
				skb->len, DMA_TO_DEVICE);

	if (FUNC1(port->dev, msg->data.addr[0]))
		goto recycle_and_drop;

	msg->dev = port->dev;
	msg->data.len[0] = skb->len;
	msg->data.eofmask = 1 << VETH_EOF_SHIFT;

	rc = FUNC8(cnx, VETH_EVENT_FRAMES, msg->token, &msg->data);

	if (rc != HvLpEvent_Rc_Good)
		goto recycle_and_drop;

	/* If the timer's not already running, start it now. */
	if (0 == cnx->outstanding_tx)
		FUNC2(&cnx->reset_timer, jiffies + cnx->reset_timeout);

	cnx->last_contact = jiffies;
	cnx->outstanding_tx++;

	if (FUNC9(cnx))
		FUNC11(cnx);

 no_error:
	FUNC6(&cnx->lock, flags);
	return 0;

 recycle_and_drop:
	FUNC7(cnx, msg);
 drop:
	FUNC6(&cnx->lock, flags);
	return 1;
}