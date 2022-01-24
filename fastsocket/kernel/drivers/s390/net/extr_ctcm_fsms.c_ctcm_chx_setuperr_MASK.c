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
struct channel {int /*<<< orphan*/  flags; int /*<<< orphan*/  cdev; int /*<<< orphan*/  timer; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  fsm_instance ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 int /*<<< orphan*/  CTCM_TIME_5_SEC ; 
 int /*<<< orphan*/  CTC_DBF_CRIT ; 
 int /*<<< orphan*/  CTC_EVENT_TIMER ; 
 int CTC_EVENT_UC_RCRESET ; 
 int CTC_EVENT_UC_RSRESET ; 
 int /*<<< orphan*/  CTC_STATE_RXERR ; 
 scalar_t__ CTC_STATE_SETUPWAIT ; 
 int /*<<< orphan*/  CTC_STATE_STARTRETRY ; 
 int /*<<< orphan*/  CTC_STATE_TXERR ; 
 int /*<<< orphan*/  DEV_EVENT_RXDOWN ; 
 int /*<<< orphan*/  DEV_EVENT_TXDOWN ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (struct channel*) ; 
 scalar_t__ READ ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/ * ctc_ch_event_names ; 
 int /*<<< orphan*/  FUNC4 (struct channel*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct channel*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(fsm_instance *fi, int event, void *arg)
{
	struct channel *ch = arg;
	struct net_device *dev = ch->netdev;
	struct ctcm_priv *priv = dev->ml_priv;

	/*
	 * Special case: Got UC_RCRESET on setmode.
	 * This means that remote side isn't setup. In this case
	 * simply retry after some 10 secs...
	 */
	if ((FUNC8(fi) == CTC_STATE_SETUPWAIT) &&
	    ((event == CTC_EVENT_UC_RCRESET) ||
	     (event == CTC_EVENT_UC_RSRESET))) {
		FUNC10(fi, CTC_STATE_STARTRETRY);
		FUNC6(&ch->timer);
		FUNC5(&ch->timer, CTCM_TIME_5_SEC, CTC_EVENT_TIMER, ch);
		if (!FUNC2(ch) && (FUNC0(ch->flags) == READ)) {
			int rc = FUNC3(ch->cdev, (unsigned long)ch);
			if (rc != 0)
				FUNC4(ch, rc,
					"HaltIO in chx_setuperr");
		}
		return;
	}

	FUNC1(ERROR, CTC_DBF_CRIT,
		"%s(%s) : %s error during %s channel setup state=%s\n",
		CTCM_FUNTAIL, dev->name, ctc_ch_event_names[event],
		(FUNC0(ch->flags) == READ) ? "RX" : "TX",
		FUNC9(fi));

	if (FUNC0(ch->flags) == READ) {
		FUNC10(fi, CTC_STATE_RXERR);
		FUNC7(priv->fsm, DEV_EVENT_RXDOWN, dev);
	} else {
		FUNC10(fi, CTC_STATE_TXERR);
		FUNC7(priv->fsm, DEV_EVENT_TXDOWN, dev);
	}
}