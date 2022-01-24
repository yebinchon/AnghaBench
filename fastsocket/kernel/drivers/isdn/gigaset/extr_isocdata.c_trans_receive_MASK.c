#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {TYPE_1__* bas; } ;
struct bc_state {struct sk_buff* skb; TYPE_3__* cs; TYPE_2__ hw; int /*<<< orphan*/  ignore; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  goodbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_STREAM_DUMP ; 
 scalar_t__ HW_HDR_LEN ; 
 scalar_t__ SBUFSIZE ; 
 int TRANSBUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,TYPE_3__*,struct bc_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct bc_state*) ; 
 unsigned char* FUNC6 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC9(unsigned char *src, unsigned count,
				 struct bc_state *bcs)
{
	struct sk_buff *skb;
	int dobytes;
	unsigned char *dst;

	if (FUNC8(bcs->ignore)) {
		bcs->ignore--;
		FUNC5(bcs);
		return;
	}
	if (FUNC8((skb = bcs->skb) == NULL)) {
		bcs->skb = skb = FUNC1(SBUFSIZE + HW_HDR_LEN);
		if (!skb) {
			FUNC2(bcs->cs->dev, "could not allocate skb\n");
			return;
		}
		FUNC7(skb, HW_HDR_LEN);
	}
	bcs->hw.bas->goodbytes += skb->len;
	dobytes = TRANSBUFSIZE - skb->len;
	while (count > 0) {
		dst = FUNC6(skb, count < dobytes ? count : dobytes);
		while (count > 0 && dobytes > 0) {
			*dst++ = FUNC0(*src++);
			count--;
			dobytes--;
		}
		if (dobytes == 0) {
			FUNC3(DEBUG_STREAM_DUMP,
				   "rcv data", skb->data, skb->len);
			FUNC4(skb, bcs->cs, bcs);
			bcs->skb = skb = FUNC1(SBUFSIZE + HW_HDR_LEN);
			if (!skb) {
				FUNC2(bcs->cs->dev,
					"could not allocate skb\n");
				return;
			}
			FUNC7(bcs->skb, HW_HDR_LEN);
			dobytes = TRANSBUFSIZE;
		}
	}
}