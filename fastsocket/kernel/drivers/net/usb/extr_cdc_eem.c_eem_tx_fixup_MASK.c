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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct usbnet {int maxpacket; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; scalar_t__ head; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EEM_HEAD ; 
 int ETH_FCS_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int FUNC12 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC13(struct usbnet *dev, struct sk_buff *skb,
				       gfp_t flags)
{
	struct sk_buff	*skb2 = NULL;
	u16		len = skb->len;
	u32		crc = 0;
	int		padlen = 0;

	/* When ((len + EEM_HEAD + ETH_FCS_LEN) % dev->maxpacket) is
	 * zero, stick two bytes of zero length EEM packet on the end.
	 * Else the framework would add invalid single byte padding,
	 * since it can't know whether ZLPs will be handled right by
	 * all the relevant hardware and software.
	 */
	if (!((len + EEM_HEAD + ETH_FCS_LEN) % dev->maxpacket))
		padlen += 2;

	if (!FUNC6(skb)) {
		int	headroom = FUNC8(skb);
		int	tailroom = FUNC12(skb);

		if ((tailroom >= ETH_FCS_LEN + padlen)
				&& (headroom >= EEM_HEAD))
			goto done;

		if ((headroom + tailroom)
				> (EEM_HEAD + ETH_FCS_LEN + padlen)) {
			skb->data = FUNC3(skb->head +
					EEM_HEAD,
					skb->data,
					skb->len);
			FUNC11(skb, len);
			goto done;
		}
	}

	skb2 = FUNC7(skb, EEM_HEAD, ETH_FCS_LEN + padlen, flags);
	if (!skb2)
		return NULL;

	FUNC2(skb);
	skb = skb2;

done:
	/* we don't use the "no Ethernet CRC" option */
	crc = FUNC1(~0, skb->data, skb->len);
	crc = ~crc;

	FUNC5(crc, FUNC10(skb, 4));

	/* EEM packet header format:
	 * b0..13:	length of ethernet frame
	 * b14:		bmCRC (1 == valid Ethernet CRC)
	 * b15:		bmType (0 == data)
	 */
	len = skb->len;
	FUNC4(FUNC0(14) | len, FUNC9(skb, 2));

	/* Bundle a zero length EEM packet if needed */
	if (padlen)
		FUNC4(0, FUNC10(skb, 2));

	return skb;
}