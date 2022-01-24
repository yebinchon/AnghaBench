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
struct l1oip {size_t d_idx; int /*<<< orphan*/  list; TYPE_1__* chan; int /*<<< orphan*/  dev; scalar_t__ registered; scalar_t__ socket_thread; int /*<<< orphan*/  timeout_tl; int /*<<< orphan*/  keep_tl; } ;
struct TYPE_2__ {scalar_t__ disorder_skb; struct l1oip* bch; struct l1oip* dch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct l1oip*) ; 
 int /*<<< orphan*/  l1oip_lock ; 
 int /*<<< orphan*/  FUNC3 (struct l1oip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct l1oip*) ; 
 int /*<<< orphan*/  FUNC6 (struct l1oip*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct l1oip *hc)
{
	int	ch;

	if (FUNC10(&hc->keep_tl))
		FUNC0(&hc->keep_tl);

	if (FUNC10(&hc->timeout_tl))
		FUNC0(&hc->timeout_tl);

	if (hc->socket_thread)
		FUNC3(hc);

	if (hc->registered && hc->chan[hc->d_idx].dch)
		FUNC7(&hc->chan[hc->d_idx].dch->dev);
	for (ch = 0; ch < 128; ch++) {
		if (hc->chan[ch].dch) {
			FUNC6(hc->chan[ch].dch);
			FUNC2(hc->chan[ch].dch);
		}
		if (hc->chan[ch].bch) {
			FUNC5(hc->chan[ch].bch);
			FUNC2(hc->chan[ch].bch);
#ifdef REORDER_DEBUG
			if (hc->chan[ch].disorder_skb)
				dev_kfree_skb(hc->chan[ch].disorder_skb);
#endif
		}
	}

	FUNC8(&l1oip_lock);
	FUNC4(&hc->list);
	FUNC9(&l1oip_lock);

	FUNC2(hc);
}