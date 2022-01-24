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
struct sk_buff {int len; unsigned char* data; } ;

/* Variables and functions */
 unsigned char DLE_FLAG ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 unsigned char* FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct sk_buff *skb, int head, int tail)
{
	struct sk_buff *iraw_skb;
	unsigned char c;
	unsigned char *cp;
	int len;

	/* worst case: every byte must be stuffed */
	iraw_skb = FUNC1(2*skb->len + tail + head);
	if (!iraw_skb) {
		FUNC2(skb);
		return NULL;
	}
	FUNC4(iraw_skb, head);

	cp = skb->data;
	len = skb->len;
	while (len--) {
		c = FUNC0(*cp++);
		if (c == DLE_FLAG)
			*(FUNC3(iraw_skb, 1)) = c;
		*(FUNC3(iraw_skb, 1)) = c;
	}
	FUNC2(skb);
	return iraw_skb;
}