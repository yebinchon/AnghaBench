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
typedef  unsigned long u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ath_common {unsigned long cachelsz; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct sk_buff* FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned long) ; 

struct sk_buff *FUNC3(struct ath_common *common,
				u32 len,
				gfp_t gfp_mask)
{
	struct sk_buff *skb;
	u32 off;

	/*
	 * Cache-line-align.  This is important (for the
	 * 5210 at least) as not doing so causes bogus data
	 * in rx'd frames.
	 */

	/* Note: the kernel can allocate a value greater than
	 * what we ask it to give us. We really only need 4 KB as that
	 * is this hardware supports and in fact we need at least 3849
	 * as that is the MAX AMSDU size this hardware supports.
	 * Unfortunately this means we may get 8 KB here from the
	 * kernel... and that is actually what is observed on some
	 * systems :( */
	skb = FUNC0(len + common->cachelsz - 1, gfp_mask);
	if (skb != NULL) {
		off = ((unsigned long) skb->data) % common->cachelsz;
		if (off != 0)
			FUNC2(skb, common->cachelsz - off);
	} else {
		FUNC1("skbuff alloc of size %u failed\n", len);
		return NULL;
	}

	return skb;
}