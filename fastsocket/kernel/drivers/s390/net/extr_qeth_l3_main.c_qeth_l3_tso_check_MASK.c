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
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int doff; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC1(struct sk_buff *skb)
{
	int len = ((unsigned long)FUNC0(skb) + FUNC0(skb)->doff * 4) -
		(unsigned long)skb->data;
	return (((unsigned long)skb->data & PAGE_MASK) !=
		(((unsigned long)skb->data + len) & PAGE_MASK));
}