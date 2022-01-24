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
struct sk_buff {int* data; scalar_t__ len; } ;
struct TYPE_2__ {scalar_t__ maxlen; int /*<<< orphan*/  flag; } ;
struct PStack {TYPE_1__ l2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_ORIG ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct PStack *st, struct sk_buff *skb)
{
	int rsp = *skb->data & 0x2;
	if (FUNC1(FLG_ORIG, &st->l2.flag))
		rsp = !rsp;

	if (rsp)
		return 'L';

	if (skb->len > st->l2.maxlen + FUNC0(&st->l2) + 1)
		return 'O';

	return 0;
}