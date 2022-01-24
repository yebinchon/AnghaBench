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
struct mISDNhead {scalar_t__ prim; } ;
struct layer2 {int /*<<< orphan*/  down_id; int /*<<< orphan*/  down_queue; int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_L1_NOTREADY ; 
 scalar_t__ PH_DATA_REQ ; 
 int FUNC0 (struct layer2*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct mISDNhead* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct layer2 *l2, struct sk_buff *skb)
{
	struct mISDNhead *hh = FUNC2(skb);

	if (hh->prim == PH_DATA_REQ) {
		if (FUNC4(FLG_L1_NOTREADY, &l2->flag)) {
			FUNC3(&l2->down_queue, skb);
			return 0;
		}
		l2->down_id = FUNC1(skb);
	}
	return FUNC0(l2, skb);
}