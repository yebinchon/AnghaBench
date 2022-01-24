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
struct usbnet {int maxpacket; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; scalar_t__ head; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *
FUNC10(struct usbnet *dev, struct sk_buff *skb, gfp_t flags)
{
	int 	padlen;
	int	length = skb->len;
	int	headroom = FUNC5(skb);
	int	tailroom = FUNC9(skb);
	__le32	*packet_count;
	__le32	*packet_len;

	// FIXME:  magic numbers, bleech
	padlen = ((skb->len + (4 + 4*1)) % 64) ? 0 : 1;

	if ((!FUNC3(skb))
			&& ((headroom + tailroom) >= (padlen + (4 + 4*1)))) {
		if ((headroom < (4 + 4*1)) || (tailroom < padlen)) {
			skb->data = FUNC2(skb->head + (4 + 4*1),
					     skb->data, skb->len);
			FUNC8(skb, skb->len);
		}
	} else {
		struct sk_buff	*skb2;
		skb2 = FUNC4(skb, (4 + 4*1) , padlen, flags);
		FUNC1(skb);
		skb = skb2;
		if (!skb)
			return NULL;
	}

	// attach the packet count to the header
	packet_count = (__le32 *) FUNC6(skb, (4 + 4*1));
	packet_len = packet_count + 1;

	*packet_count = FUNC0(1);
	*packet_len = FUNC0(length);

	// add padding byte
	if ((skb->len % dev->maxpacket) == 0)
		FUNC7(skb, 1);

	return skb;
}