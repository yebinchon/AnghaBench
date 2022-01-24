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
typedef  int u32 ;
struct usbnet {int dummy; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; scalar_t__ head; } ;
typedef  int /*<<< orphan*/  padbytes ;
typedef  int /*<<< orphan*/  packet_len ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int*,int) ; 
 int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int FUNC12 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC13(struct usbnet *dev, struct sk_buff *skb,
					gfp_t flags)
{
	int padlen;
	int headroom = FUNC7(skb);
	int tailroom = FUNC12(skb);
	u32 packet_len;
	u32 padbytes = 0xffff0000;

	padlen = ((skb->len + 4) % 512) ? 0 : 4;

	if ((!FUNC4(skb))
	    && ((headroom + tailroom) >= (4 + padlen))) {
		if ((headroom < 4) || (tailroom < padlen)) {
			skb->data = FUNC3(skb->head + 4, skb->data, skb->len);
			FUNC10(skb, skb->len);
		}
	} else {
		struct sk_buff *skb2;
		skb2 = FUNC5(skb, 4, padlen, flags);
		FUNC1(skb);
		skb = skb2;
		if (!skb)
			return NULL;
	}

	FUNC8(skb, 4);
	packet_len = (((skb->len - 4) ^ 0x0000ffff) << 16) + (skb->len - 4);
	FUNC0(&packet_len);
	FUNC6(skb, &packet_len, sizeof(packet_len));

	if ((skb->len % 512) == 0) {
		FUNC0(&padbytes);
		FUNC2(FUNC11(skb), &padbytes, sizeof(padbytes));
		FUNC9(skb, sizeof(padbytes));
	}
	return skb;
}