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
struct sk_buff {int* data; int len; } ;
struct TYPE_2__ {int maxlen; int /*<<< orphan*/  flag; } ;
struct PStack {TYPE_1__ l2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_MOD128 ; 
 int /*<<< orphan*/  FLG_ORIG ; 
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct PStack *st, struct sk_buff *skb)
{
	int i = FUNC0(&st->l2) + (FUNC1(FLG_MOD128, &st->l2.flag) ? 2 : 1);
	int rsp = *skb->data & 0x2;

	if (FUNC1(FLG_ORIG, &st->l2.flag))
		rsp = !rsp;

	if (rsp)
		return 'L';


	if (skb->len < i)
		return 'N';

	if ((skb->len - i) > st->l2.maxlen)
		return 'O';


	return 0;
}