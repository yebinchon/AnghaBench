#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  truesize; } ;
struct TYPE_4__ {int /*<<< orphan*/  length; } ;
struct atmtcp_control {int type; int /*<<< orphan*/  vcc; TYPE_1__ hdr; } ;
struct atm_vcc {int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; int /*<<< orphan*/  (* push ) (struct atm_vcc*,struct sk_buff*) ;} ;
typedef  int /*<<< orphan*/  atm_kptr_t ;
struct TYPE_6__ {struct atm_vcc* vcc; } ;
struct TYPE_5__ {int /*<<< orphan*/  sk_sleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMTCP_HDR_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EUNATCH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct atm_vcc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (struct atm_vcc*) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct atm_vcc*,struct sk_buff*) ; 
 int FUNC14 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC15(struct atm_vcc *vcc,int type,
    const struct atmtcp_control *msg,int flag)
{
	FUNC0(wait,current);
	struct atm_vcc *out_vcc;
	struct sk_buff *skb;
	struct atmtcp_control *new_msg;
	int old_test;
	int error = 0;

	out_vcc = FUNC1(vcc->dev) ? FUNC1(vcc->dev)->vcc : NULL;
	if (!out_vcc) return -EUNATCH;
	skb = FUNC3(sizeof(*msg),GFP_KERNEL);
	if (!skb) return -ENOMEM;
	FUNC6();
	out_vcc = FUNC1(vcc->dev) ? FUNC1(vcc->dev)->vcc : NULL;
	if (!out_vcc) {
		FUNC5(skb);
		return -EUNATCH;
	}
	FUNC4(out_vcc,skb->truesize);
	new_msg = (struct atmtcp_control *) FUNC12(skb,sizeof(*new_msg));
	*new_msg = *msg;
	new_msg->hdr.length = ATMTCP_HDR_MAGIC;
	new_msg->type = type;
	FUNC7(&new_msg->vcc,0,sizeof(atm_kptr_t));
	*(struct atm_vcc **) &new_msg->vcc = vcc;
	old_test = FUNC14(flag,&vcc->flags);
	out_vcc->push(out_vcc,skb);
	FUNC2(FUNC11(vcc)->sk_sleep, &wait);
	while (FUNC14(flag,&vcc->flags) == old_test) {
		FUNC6();
		out_vcc = FUNC1(vcc->dev) ? FUNC1(vcc->dev)->vcc : NULL;
		if (!out_vcc) {
			error = -EUNATCH;
			break;
		}
		FUNC10(TASK_UNINTERRUPTIBLE);
		FUNC9();
	}
	FUNC10(TASK_RUNNING);
	FUNC8(FUNC11(vcc)->sk_sleep, &wait);
	return error;
}