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
struct sk_buff {int data_len; int len; int truesize; } ;
struct qeth_qdio_buffer {struct sk_buff* rx_skb; } ;
struct qdio_buffer_element {scalar_t__ addr; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ ETH_HLEN ; 
 int QETH_RX_PULL_LEN ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int,struct page*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 
 struct page* FUNC6 (scalar_t__) ; 

__attribute__((used)) static inline int FUNC7(struct qeth_qdio_buffer *qethbuffer,
		struct qdio_buffer_element *element,
		struct sk_buff **pskb, int offset, int *pfrag, int data_len)
{
	struct page *page = FUNC6(element->addr);
	if (*pskb == NULL) {
		if (qethbuffer->rx_skb) {
			/* only if qeth_card.options.cq == QETH_CQ_ENABLED */
			*pskb = qethbuffer->rx_skb;
			qethbuffer->rx_skb = NULL;
		} else {
			*pskb = FUNC0(QETH_RX_PULL_LEN + ETH_HLEN);
			if (!(*pskb))
				return -ENOMEM;
		}

		FUNC5(*pskb, ETH_HLEN);
		if (data_len <= QETH_RX_PULL_LEN) {
			FUNC2(FUNC4(*pskb, data_len), element->addr + offset,
				data_len);
		} else {
			FUNC1(page);
			FUNC2(FUNC4(*pskb, QETH_RX_PULL_LEN),
			       element->addr + offset, QETH_RX_PULL_LEN);
			FUNC3(*pskb, *pfrag, page,
				offset + QETH_RX_PULL_LEN,
				data_len - QETH_RX_PULL_LEN);
			(*pskb)->data_len += data_len - QETH_RX_PULL_LEN;
			(*pskb)->len      += data_len - QETH_RX_PULL_LEN;
			(*pskb)->truesize += data_len - QETH_RX_PULL_LEN;
			(*pfrag)++;
		}
	} else {
		FUNC1(page);
		FUNC3(*pskb, *pfrag, page, offset, data_len);
		(*pskb)->data_len += data_len;
		(*pskb)->len      += data_len;
		(*pskb)->truesize += data_len;
		(*pfrag)++;
	}


	return 0;
}