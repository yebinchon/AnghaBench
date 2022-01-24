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
struct sk_buff {unsigned int len; scalar_t__ data; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned int) ; 

void FUNC5(struct sk_buff *skb, unsigned int header_length)
{
	unsigned int payload_length = skb->len - header_length;
	unsigned int header_align = FUNC0(skb, 0);
	unsigned int payload_align = FUNC0(skb, header_length);
	unsigned int l2pad = payload_length ? FUNC1(header_length) : 0;

	/*
	 * Adjust the header alignment if the payload needs to be moved more
	 * than the header.
	 */
	if (payload_align > header_align)
		header_align += 4;

	/* There is nothing to do if no alignment is needed */
	if (!header_align)
		return;

	/* Reserve the amount of space needed in front of the frame */
	FUNC3(skb, header_align);

	/*
	 * Move the header.
	 */
	FUNC2(skb->data, skb->data + header_align, header_length);

	/* Move the payload, if present and if required */
	if (payload_length && payload_align)
		FUNC2(skb->data + header_length + l2pad,
			skb->data + header_length + l2pad + payload_align,
			payload_length);

	/* Trim the skb to the correct size */
	FUNC4(skb, header_length + l2pad + payload_length);
}