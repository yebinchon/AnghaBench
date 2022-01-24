#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {unsigned char head; struct sk_buff* data; int /*<<< orphan*/  truesize; TYPE_2__* rxq; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_address; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ rx_in ;
typedef  long gfp_t ;
struct TYPE_5__ {scalar_t__ pending; scalar_t__ maximum; scalar_t__ buffers_wanted; int /*<<< orphan*/  buffer_size; } ;
typedef  TYPE_2__ amb_rxq ;
typedef  struct sk_buff amb_dev ;

/* Variables and functions */
 int DBG_FLOW ; 
 int DBG_POOL ; 
 int DBG_SKB ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dead ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,TYPE_1__*,unsigned char) ; 
 unsigned char FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC9 (amb_dev * dev, unsigned char pool,
                                 gfp_t priority)
{
  rx_in rx;
  amb_rxq * rxq;
  
  FUNC0 (DBG_FLOW|DBG_POOL, "fill_rx_pool %p %hu %x", dev, pool, priority);
  
  if (FUNC7 (dead, &dev->flags))
    return;
  
  rxq = &dev->rxq[pool];
  while (rxq->pending < rxq->maximum && rxq->pending < rxq->buffers_wanted) {
    
    struct sk_buff * skb = FUNC1 (rxq->buffer_size, priority);
    if (!skb) {
      FUNC0 (DBG_SKB|DBG_POOL, "failed to allocate skb for RX pool %hu", pool);
      return;
    }
    if (FUNC2 (skb->data, skb->truesize)) {
      FUNC4 (skb);
      return;
    }
    // cast needed as there is no %? for pointer differences
    FUNC0 (DBG_SKB, "allocated skb at %p, head %p, area %li",
	    skb, skb->head, (long) (FUNC6(skb) - skb->head));
    rx.handle = FUNC8 (skb);
    rx.host_address = FUNC3 (FUNC8 (skb->data));
    if (FUNC5 (dev, &rx, pool))
      FUNC4 (skb);
    
  }
  
  return;
}