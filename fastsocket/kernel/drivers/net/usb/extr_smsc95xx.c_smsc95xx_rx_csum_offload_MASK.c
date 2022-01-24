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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  csum; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_COMPLETE ; 
 int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct sk_buff *skb)
{
	skb->csum = *(u16 *)(FUNC0(skb) - 2);
	skb->ip_summed = CHECKSUM_COMPLETE;
	FUNC1(skb, skb->len - 2);
}