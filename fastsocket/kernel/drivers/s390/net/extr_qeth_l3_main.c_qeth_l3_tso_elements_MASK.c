#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {unsigned long len; scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ nr_frags; } ;
struct TYPE_3__ {int doff; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC4(struct sk_buff *skb)
{
	unsigned long tcpd = (unsigned long)FUNC3(skb) +
		FUNC3(skb)->doff * 4;
	int tcpd_len = skb->len - (tcpd - (unsigned long)skb->data);
	int elements = FUNC1(tcpd + tcpd_len) - FUNC0(tcpd);
	elements += FUNC2(skb)->nr_frags;
	return elements;
}