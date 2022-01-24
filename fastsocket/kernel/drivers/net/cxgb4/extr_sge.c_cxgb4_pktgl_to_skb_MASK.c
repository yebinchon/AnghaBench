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
struct sk_buff {unsigned int len; unsigned int data_len; int /*<<< orphan*/  truesize; } ;
struct pkt_gl {unsigned int tot_len; int /*<<< orphan*/  va; } ;

/* Variables and functions */
 unsigned int RX_COPY_THRES ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pkt_gl const*,unsigned int) ; 
 struct sk_buff* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int) ; 

struct sk_buff *FUNC6(const struct pkt_gl *gl,
				   unsigned int skb_len, unsigned int pull_len)
{
	struct sk_buff *skb;

	/*
	 * Below we rely on RX_COPY_THRES being less than the smallest Rx buffer
	 * size, which is expected since buffers are at least PAGE_SIZEd.
	 * In this case packets up to RX_COPY_THRES have only one fragment.
	 */
	if (gl->tot_len <= RX_COPY_THRES) {
		skb = FUNC2(gl->tot_len);
		if (FUNC5(!skb))
			goto out;
		FUNC0(skb, gl->tot_len);
		FUNC3(skb, gl->va, gl->tot_len);
	} else {
		skb = FUNC2(skb_len);
		if (FUNC5(!skb))
			goto out;
		FUNC0(skb, pull_len);
		FUNC3(skb, gl->va, pull_len);

		FUNC1(FUNC4(skb), gl, pull_len);
		skb->len = gl->tot_len;
		skb->data_len = skb->len - pull_len;
		skb->truesize += skb->data_len;
	}
out:	return skb;
}