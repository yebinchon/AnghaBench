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
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct gfar_private {scalar_t__ rx_buffer_size; int /*<<< orphan*/  rx_recycle; } ;

/* Variables and functions */
 int RXBUF_ALIGNMENT ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC1 (struct net_device*,scalar_t__) ; 
 struct gfar_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int) ; 

struct sk_buff * FUNC4(struct net_device *dev)
{
	unsigned int alignamount;
	struct gfar_private *priv = FUNC2(dev);
	struct sk_buff *skb = NULL;

	skb = FUNC0(&priv->rx_recycle);
	if (!skb)
		skb = FUNC1(dev,
				priv->rx_buffer_size + RXBUF_ALIGNMENT);

	if (!skb)
		return NULL;

	alignamount = RXBUF_ALIGNMENT -
		(((unsigned long) skb->data) & (RXBUF_ALIGNMENT - 1));

	/* We need the data buffer to be aligned properly.  We will reserve
	 * as many bytes as needed to align the data properly
	 */
	FUNC3(skb, alignamount);

	return skb;
}