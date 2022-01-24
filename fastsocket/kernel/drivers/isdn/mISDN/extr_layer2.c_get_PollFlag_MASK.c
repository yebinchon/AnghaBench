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
typedef  int u_char ;
struct sk_buff {int* data; } ;
struct layer2 {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct layer2*) ; 

inline u_char
FUNC1(struct layer2 *l2, struct sk_buff *skb)
{
	return skb->data[FUNC0(l2)] & 0x10;
}