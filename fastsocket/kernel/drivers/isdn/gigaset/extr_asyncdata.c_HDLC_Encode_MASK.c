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
struct sk_buff {unsigned char* data; int len; int /*<<< orphan*/  head; } ;
typedef  int __u16 ;

/* Variables and functions */
 unsigned char PPP_ESCAPE ; 
 unsigned char PPP_FLAG ; 
 int PPP_INITFCS ; 
 unsigned char PPP_TRANS ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 unsigned char* FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct sk_buff *skb, int head, int tail)
{
	struct sk_buff *hdlc_skb;
	__u16 fcs;
	unsigned char c;
	unsigned char *cp;
	int len;
	unsigned int stuf_cnt;

	stuf_cnt = 0;
	fcs = PPP_INITFCS;
	cp = skb->data;
	len = skb->len;
	while (len--) {
		if (FUNC4(*cp))
			stuf_cnt++;
		fcs = FUNC0(fcs, *cp++);
	}
	fcs ^= 0xffff;			/* complement */

	/* size of new buffer: original size + number of stuffing bytes
	 * + 2 bytes FCS + 2 stuffing bytes for FCS (if needed) + 2 flag bytes
	 */
	hdlc_skb = FUNC1(skb->len + stuf_cnt + 6 + tail + head);
	if (!hdlc_skb) {
		FUNC2(skb);
		return NULL;
	}
	FUNC6(hdlc_skb, head);

	/* Copy acknowledge request into new skb */
	FUNC3(hdlc_skb->head, skb->head, 2);

	/* Add flag sequence in front of everything.. */
	*(FUNC5(hdlc_skb, 1)) = PPP_FLAG;

	/* Perform byte stuffing while copying data. */
	while (skb->len--) {
		if (FUNC4(*skb->data)) {
			*(FUNC5(hdlc_skb, 1)) = PPP_ESCAPE;
			*(FUNC5(hdlc_skb, 1)) = (*skb->data++) ^ PPP_TRANS;
		} else
			*(FUNC5(hdlc_skb, 1)) = *skb->data++;
	}

	/* Finally add FCS (byte stuffed) and flag sequence */
	c = (fcs & 0x00ff);	/* least significant byte first */
	if (FUNC4(c)) {
		*(FUNC5(hdlc_skb, 1)) = PPP_ESCAPE;
		c ^= PPP_TRANS;
	}
	*(FUNC5(hdlc_skb, 1)) = c;

	c = ((fcs >> 8) & 0x00ff);
	if (FUNC4(c)) {
		*(FUNC5(hdlc_skb, 1)) = PPP_ESCAPE;
		c ^= PPP_TRANS;
	}
	*(FUNC5(hdlc_skb, 1)) = c;

	*(FUNC5(hdlc_skb, 1)) = PPP_FLAG;

	FUNC2(skb);
	return hdlc_skb;
}