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
typedef  int u32 ;
struct sk_buff {scalar_t__ len; scalar_t__ data_len; } ;
struct be_adapter {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr_frags; } ;

/* Variables and functions */
 int BE_MAX_TX_FRAG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct be_adapter*) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static u32 FUNC3(struct be_adapter *adapter, struct sk_buff *skb,
								bool *dummy)
{
	int cnt = (skb->len > skb->data_len);

	cnt += FUNC2(skb)->nr_frags;

	/* to account for hdr wrb */
	cnt++;
	if (FUNC1(adapter) || !(cnt & 1)) {
		*dummy = false;
	} else {
		/* add a dummy to make it an even num */
		cnt++;
		*dummy = true;
	}
	FUNC0(cnt > BE_MAX_TX_FRAG_COUNT);
	return cnt;
}