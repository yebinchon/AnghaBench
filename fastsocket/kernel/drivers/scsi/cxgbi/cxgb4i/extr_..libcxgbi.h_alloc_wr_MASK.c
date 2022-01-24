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
struct sk_buff {int /*<<< orphan*/  head; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 

__attribute__((used)) static inline struct sk_buff *FUNC4(int wrlen, int dlen, gfp_t gfp)
{
	struct sk_buff *skb = FUNC1(wrlen + dlen, gfp);

	if (skb) {
		FUNC0(skb, wrlen);
		FUNC2(skb->head, 0, wrlen + dlen);
	} else
		FUNC3("alloc cpl wr skb %u+%u, OOM.\n", wrlen, dlen);
	return skb;
}