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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_queue; int /*<<< orphan*/  t203; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  INDICATION ; 
 int /*<<< orphan*/  RSP ; 
 int /*<<< orphan*/  ST_L2_4 ; 
 int UA ; 
 int /*<<< orphan*/  FUNC2 (struct PStack*) ; 
 int FUNC3 (struct PStack*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct PStack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct PStack*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct PStack*,int) ; 

__attribute__((used)) static void
FUNC8(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;
	struct sk_buff *skb = arg;

	FUNC0(fi, ST_L2_4);
	FUNC1(&st->l2.t203, 3);
	FUNC7(st, 4);

	FUNC5(st, UA | FUNC3(st, skb), RSP);

	FUNC6(&st->l2.i_queue);
	FUNC2(st);
	FUNC4(st, INDICATION);
}