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
struct mISDNhead {void* id; } ;
struct layer2 {void* down_id; int /*<<< orphan*/  flag; int /*<<< orphan*/  down_queue; int /*<<< orphan*/  l2m; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  EV_L2_ACK_PULL ; 
 int /*<<< orphan*/  FLG_L1_NOTREADY ; 
 void* MISDN_ID_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct layer2*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct layer2 *l2, struct mISDNhead *hh, struct sk_buff *skb) {
	struct sk_buff *nskb = skb;
	int ret = -EAGAIN;

	if (FUNC7(FLG_L1_NOTREADY, &l2->flag)) {
		if (hh->id == l2->down_id) {
			nskb = FUNC4(&l2->down_queue);
			if (nskb) {
				l2->down_id = FUNC3(nskb);
				if (FUNC1(l2, nskb)) {
					FUNC0(nskb);
					l2->down_id = MISDN_ID_NONE;
				}
			} else
				l2->down_id = MISDN_ID_NONE;
			if (ret) {
				FUNC0(skb);
				ret = 0;
			}
			if (l2->down_id == MISDN_ID_NONE) {
				FUNC5(FLG_L1_NOTREADY, &l2->flag);
				FUNC2(&l2->l2m, EV_L2_ACK_PULL, NULL);
			}
		}
	}
	if (!FUNC6(FLG_L1_NOTREADY, &l2->flag)) {
		nskb = FUNC4(&l2->down_queue);
		if (nskb) {
			l2->down_id = FUNC3(nskb);
			if (FUNC1(l2, nskb)) {
				FUNC0(nskb);
				l2->down_id = MISDN_ID_NONE;
				FUNC5(FLG_L1_NOTREADY, &l2->flag);
			}
		} else
			FUNC5(FLG_L1_NOTREADY, &l2->flag);
	}
	return ret;
}