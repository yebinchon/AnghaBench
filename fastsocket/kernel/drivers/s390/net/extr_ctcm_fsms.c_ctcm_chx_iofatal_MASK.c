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
struct net_device {struct ctcm_priv* ml_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; } ;
struct ctcm_priv {int /*<<< orphan*/  fsm; TYPE_1__ stats; } ;
struct channel {int /*<<< orphan*/  id; int /*<<< orphan*/  timer; int /*<<< orphan*/  flags; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  fsm_instance ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 int /*<<< orphan*/  CTC_DBF_ERROR ; 
 int /*<<< orphan*/  CTC_STATE_RXERR ; 
 int /*<<< orphan*/  CTC_STATE_TXERR ; 
 int /*<<< orphan*/  DEV_EVENT_RXDOWN ; 
 int /*<<< orphan*/  DEV_EVENT_TXDOWN ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (struct channel*) ; 
 int READ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(fsm_instance *fi, int event, void *arg)
{
	struct channel *ch = arg;
	struct net_device *dev = ch->netdev;
	struct ctcm_priv *priv = dev->ml_priv;
	int rd = FUNC0(ch->flags);

	FUNC3(&ch->timer);
	FUNC1(ERROR, CTC_DBF_ERROR,
		"%s: %s: %s unrecoverable channel error",
			CTCM_FUNTAIL, ch->id, rd == READ ? "RX" : "TX");

	if (FUNC2(ch)) {
		priv->stats.tx_dropped++;
		priv->stats.tx_errors++;
	}
	if (rd == READ) {
		FUNC5(fi, CTC_STATE_RXERR);
		FUNC4(priv->fsm, DEV_EVENT_RXDOWN, dev);
	} else {
		FUNC5(fi, CTC_STATE_TXERR);
		FUNC4(priv->fsm, DEV_EVENT_TXDOWN, dev);
	}
}