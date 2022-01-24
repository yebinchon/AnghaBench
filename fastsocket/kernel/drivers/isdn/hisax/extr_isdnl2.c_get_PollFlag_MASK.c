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
struct PStack {int /*<<< orphan*/  l2; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline u_char
FUNC1(struct PStack * st, struct sk_buff * skb)
{
	return (skb->data[FUNC0(&(st->l2))] & 0x10);
}