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
struct wl1271 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  fem_manuf; TYPE_1__* hw; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PLT_FEM_DETECT ; 
 int /*<<< orphan*/  WL1271_TM_ATTR_DATA ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int) ; 
 int FUNC7 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wl1271*) ; 

__attribute__((used)) static int FUNC9(struct wl1271 *wl, struct nlattr *tb[])
{
	/* return FEM type */
	int ret, len;
	struct sk_buff *skb;

	ret = FUNC7(wl, PLT_FEM_DETECT);
	if (ret < 0)
		goto out;

	FUNC3(&wl->mutex);

	len = FUNC6(sizeof(wl->fem_manuf));
	skb = FUNC0(wl->hw->wiphy, len);
	if (!skb) {
		ret = -ENOMEM;
		goto out_mutex;
	}

	if (FUNC5(skb, WL1271_TM_ATTR_DATA, sizeof(wl->fem_manuf),
					      &wl->fem_manuf)) {
		FUNC2(skb);
		ret = -EMSGSIZE;
		goto out_mutex;
	}

	ret = FUNC1(skb);

out_mutex:
	FUNC4(&wl->mutex);

	/* We always stop plt after DETECT mode */
	FUNC8(wl);
out:
	return ret;
}