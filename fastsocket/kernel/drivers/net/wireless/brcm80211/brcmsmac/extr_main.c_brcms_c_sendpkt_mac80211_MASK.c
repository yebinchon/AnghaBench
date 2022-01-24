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
typedef  int /*<<< orphan*/  uint ;
struct sk_buff {int dummy; } ;
struct scb {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct brcms_c_info {struct scb pri_scb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_c_info*,struct ieee80211_hw*,struct sk_buff*,struct scb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_c_info*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

bool FUNC5(struct brcms_c_info *wlc, struct sk_buff *sdu,
			      struct ieee80211_hw *hw)
{
	uint fifo;
	struct scb *scb = &wlc->pri_scb;

	fifo = FUNC0(FUNC4(sdu));
	FUNC1(wlc, hw, sdu, scb, 0, 1, fifo, 0);
	if (!FUNC2(wlc, sdu))
		return true;

	/* packet discarded */
	FUNC3(sdu);
	return false;
}