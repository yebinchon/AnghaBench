#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_10__ {size_t free; int /*<<< orphan*/  len; TYPE_4__* queue; int /*<<< orphan*/  tail; } ;
struct TYPE_7__ {int speed; int /*<<< orphan*/  fir_base; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct via_ircc_cb {int chip_id; int new_speed; int /*<<< orphan*/  lock; TYPE_5__ tx_fifo; TYPE_2__ io; TYPE_1__ st_fifo; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_8__ {int /*<<< orphan*/  tx_bytes; } ;
struct net_device {void* trans_start; TYPE_3__ stats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int __u32 ;
struct TYPE_9__ {int /*<<< orphan*/  start; scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct sk_buff*) ; 
 void* jiffies ; 
 struct via_ircc_cb* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct via_ircc_cb*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct via_ircc_cb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC11(struct sk_buff *skb,
						struct net_device *dev)
{
	struct via_ircc_cb *self;
	u16 iobase;
	__u32 speed;
	unsigned long flags;

	self = FUNC3(dev);
	iobase = self->io.fir_base;

	if (self->st_fifo.len)
		return NETDEV_TX_OK;
	if (self->chip_id == 0x3076)
		FUNC1(1500);
	else
		FUNC8(1500);
	FUNC4(dev);
	speed = FUNC2(skb);
	if ((speed != self->io.speed) && (speed != -1)) {
		if (!skb->len) {
			FUNC9(self, speed);
			dev->trans_start = jiffies;
			FUNC0(skb);
			return NETDEV_TX_OK;
		} else
			self->new_speed = speed;
	}
	FUNC6(&self->lock, flags);
	self->tx_fifo.queue[self->tx_fifo.free].start = self->tx_fifo.tail;
	self->tx_fifo.queue[self->tx_fifo.free].len = skb->len;

	self->tx_fifo.tail += skb->len;
	dev->stats.tx_bytes += skb->len;
	FUNC5(skb,
		      self->tx_fifo.queue[self->tx_fifo.free].start, skb->len);
	self->tx_fifo.len++;
	self->tx_fifo.free++;
//F01   if (self->tx_fifo.len == 1) {
	FUNC10(self, iobase);
//F01   }
//F01   if (self->tx_fifo.free < (MAX_TX_WINDOW -1 )) netif_wake_queue(self->netdev);
	dev->trans_start = jiffies;
	FUNC0(skb);
	FUNC7(&self->lock, flags);
	return NETDEV_TX_OK;

}