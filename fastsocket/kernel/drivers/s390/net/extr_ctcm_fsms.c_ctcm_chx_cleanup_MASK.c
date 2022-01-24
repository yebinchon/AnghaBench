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
struct net_device {int /*<<< orphan*/  name; struct ctcm_priv* ml_priv; } ;
struct ctcm_priv {int /*<<< orphan*/  fsm; } ;
struct channel {int th_seg; int th_seq_num; int /*<<< orphan*/  collect_lock; scalar_t__ collect_len; int /*<<< orphan*/  collect_queue; int /*<<< orphan*/  sweep_queue; int /*<<< orphan*/  io_queue; int /*<<< orphan*/  flags; int /*<<< orphan*/ * trans_skb; int /*<<< orphan*/ * ccw; int /*<<< orphan*/  sweep_timer; int /*<<< orphan*/  timer; int /*<<< orphan*/  id; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  fsm_instance ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 int /*<<< orphan*/  CTC_DBF_NOTICE ; 
 int CTC_STATE_STOPPED ; 
 int /*<<< orphan*/  DEV_EVENT_RXDOWN ; 
 int /*<<< orphan*/  DEV_EVENT_TXDOWN ; 
 scalar_t__ FUNC2 (struct channel*) ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(fsm_instance *fi, int state,
		struct channel *ch)
{
	struct net_device *dev = ch->netdev;
	struct ctcm_priv *priv = dev->ml_priv;

	FUNC1(SETUP, CTC_DBF_NOTICE,
			"%s(%s): %s[%d]\n",
			CTCM_FUNTAIL, dev->name, ch->id, state);

	FUNC6(&ch->timer);
	if (FUNC2(ch))
		FUNC6(&ch->sweep_timer);

	FUNC8(fi, state);
	if (state == CTC_STATE_STOPPED && ch->trans_skb != NULL) {
		FUNC3(&ch->ccw[1]);
		FUNC5(ch->trans_skb);
		ch->trans_skb = NULL;
	}

	ch->th_seg = 0x00;
	ch->th_seq_num = 0x00;
	if (FUNC0(ch->flags) == READ) {
		FUNC9(&ch->io_queue);
		FUNC7(priv->fsm, DEV_EVENT_RXDOWN, dev);
	} else {
		FUNC4(&ch->io_queue);
		if (FUNC2(ch))
			FUNC4(&ch->sweep_queue);
		FUNC10(&ch->collect_lock);
		FUNC4(&ch->collect_queue);
		ch->collect_len = 0;
		FUNC11(&ch->collect_lock);
		FUNC7(priv->fsm, DEV_EVENT_TXDOWN, dev);
	}
}