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
struct sk_buff {int dummy; } ;
struct PStack {int dummy; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIRM ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ST_L2_4 ; 
 scalar_t__ FUNC1 (struct PStack*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct PStack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct PStack*,int) ; 

__attribute__((used)) static void
FUNC4(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;
	struct sk_buff *skb = arg;

	if (FUNC1(st, skb)) {
		FUNC3(st, 8);
		FUNC2(st, CONFIRM);
		FUNC0(fi, ST_L2_4);
	}
}