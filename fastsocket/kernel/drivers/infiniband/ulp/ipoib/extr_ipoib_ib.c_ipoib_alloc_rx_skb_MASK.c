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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct page {int dummy; } ;
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  ca; TYPE_1__* rx_ring; int /*<<< orphan*/  max_ib_mtu; } ;
struct TYPE_2__ {struct sk_buff* skb; int /*<<< orphan*/ * mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int IPOIB_UD_HEAD_SIZE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct ipoib_dev_priv* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC13(struct net_device *dev, int id)
{
	struct ipoib_dev_priv *priv = FUNC9(dev);
	struct sk_buff *skb;
	int buf_size;
	int tailroom;
	u64 *mapping;

	if (FUNC8(priv->max_ib_mtu)) {
		buf_size = IPOIB_UD_HEAD_SIZE;
		tailroom = 128; /* reserve some tailroom for IP/TCP headers */
	} else {
		buf_size = FUNC0(priv->max_ib_mtu);
		tailroom = 0;
	}

	skb = FUNC2(buf_size + tailroom + 4);
	if (FUNC12(!skb))
		return NULL;

	/*
	 * IB will leave a 40 byte gap for a GRH and IPoIB adds a 4 byte
	 * header.  So we need 4 more bytes to get to 48 and align the
	 * IP header to a multiple of 16.
	 */
	FUNC11(skb, 4);

	mapping = priv->rx_ring[id].mapping;
	mapping[0] = FUNC5(priv->ca, skb->data, buf_size,
				       DMA_FROM_DEVICE);
	if (FUNC12(FUNC6(priv->ca, mapping[0])))
		goto error;

	if (FUNC8(priv->max_ib_mtu)) {
		struct page *page = FUNC1(GFP_ATOMIC);
		if (!page)
			goto partial_error;
		FUNC10(skb, 0, page, 0, PAGE_SIZE);
		mapping[1] =
			FUNC4(priv->ca, page,
					0, PAGE_SIZE, DMA_FROM_DEVICE);
		if (FUNC12(FUNC6(priv->ca, mapping[1])))
			goto partial_error;
	}

	priv->rx_ring[id].skb = skb;
	return skb;

partial_error:
	FUNC7(priv->ca, mapping[0], buf_size, DMA_FROM_DEVICE);
error:
	FUNC3(skb);
	return NULL;
}