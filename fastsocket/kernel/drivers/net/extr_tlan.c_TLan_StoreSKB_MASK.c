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
struct tlan_list_tag {TYPE_1__* buffer; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {unsigned long address; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 

__attribute__((used)) static inline void
FUNC1( struct tlan_list_tag *tag, struct sk_buff *skb)
{
	unsigned long addr = (unsigned long)skb;
	tag->buffer[9].address = addr;
	tag->buffer[8].address = FUNC0(addr);
}