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
typedef  int /*<<< orphan*/  u32 ;
struct skb_frag_struct {unsigned long page_offset; unsigned long size; } ;
struct sk_buff {unsigned char* data; } ;
struct fc_frame {int dummy; } ;
struct TYPE_2__ {unsigned int nr_frags; struct skb_frag_struct* frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SKB_DATA_SOFTIRQ ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,unsigned long) ; 
 struct sk_buff* FUNC1 (struct fc_frame*) ; 
 unsigned char* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (unsigned long,scalar_t__) ; 
 scalar_t__ FUNC5 (struct skb_frag_struct*) ; 
 unsigned long FUNC6 (struct sk_buff*) ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 

u32 FUNC8(struct fc_frame *fp)
{
	struct sk_buff *skb = FUNC1(fp);
	struct skb_frag_struct *frag;
	unsigned char *data;
	unsigned long off, len, clen;
	u32 crc;
	unsigned i;

	crc = FUNC0(~0, skb->data, FUNC6(skb));

	for (i = 0; i < FUNC7(skb)->nr_frags; i++) {
		frag = &FUNC7(skb)->frags[i];
		off = frag->page_offset;
		len = frag->size;
		while (len > 0) {
			clen = FUNC4(len, PAGE_SIZE - (off & ~PAGE_MASK));
			data = FUNC2(
				FUNC5(frag) + (off >> PAGE_SHIFT),
				KM_SKB_DATA_SOFTIRQ);
			crc = FUNC0(crc, data + (off & ~PAGE_MASK), clen);
			FUNC3(data, KM_SKB_DATA_SOFTIRQ);
			off += clen;
			len -= clen;
		}
	}
	return crc;
}