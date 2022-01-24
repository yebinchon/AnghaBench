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
struct ctcm_priv {struct channel** channel; int /*<<< orphan*/  fsm; } ;
struct channel {int /*<<< orphan*/  cdev; int /*<<< orphan*/ * fsm; int /*<<< orphan*/  timer; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  fsm_instance ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 int /*<<< orphan*/  CTC_DBF_NOTICE ; 
 int /*<<< orphan*/  CTC_STATE_DTERM ; 
 int /*<<< orphan*/  DEV_EVENT_RXDOWN ; 
 int /*<<< orphan*/  DEV_EVENT_TXDOWN ; 
 int /*<<< orphan*/  TRACE ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(fsm_instance *fi, int event, void *arg)
{
	struct channel *ch = arg;
	struct channel *ch2;
	struct net_device *dev = ch->netdev;
	struct ctcm_priv *priv = dev->ml_priv;

	FUNC0(TRACE, CTC_DBF_NOTICE,
			"%s: %s: remote disconnect - re-init ...",
				CTCM_FUNTAIL, dev->name);
	FUNC2(&ch->timer);
	/*
	 * Notify device statemachine
	 */
	FUNC3(priv->fsm, DEV_EVENT_RXDOWN, dev);
	FUNC3(priv->fsm, DEV_EVENT_TXDOWN, dev);

	FUNC4(fi, CTC_STATE_DTERM);
	ch2 = priv->channel[WRITE];
	FUNC4(ch2->fsm, CTC_STATE_DTERM);

	FUNC1(ch->cdev, (unsigned long)ch);
	FUNC1(ch2->cdev, (unsigned long)ch2);
}