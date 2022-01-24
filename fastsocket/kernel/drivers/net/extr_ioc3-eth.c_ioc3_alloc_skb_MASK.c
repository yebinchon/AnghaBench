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
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ IOC3_CACHELINE ; 
 int FUNC0 (unsigned long) ; 
 struct sk_buff* FUNC1 (scalar_t__,unsigned int) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static inline struct sk_buff * FUNC4(unsigned long length,
	unsigned int gfp_mask)
{
	struct sk_buff *skb;

	skb = FUNC1(length + IOC3_CACHELINE - 1, gfp_mask);
	if (FUNC2(skb)) {
		int offset = FUNC0((unsigned long) skb->data);
		if (offset)
			FUNC3(skb, offset);
	}

	return skb;
}