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
struct TYPE_2__ {int /*<<< orphan*/  sa_family; int /*<<< orphan*/  sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct net_device {int dummy; } ;
struct lbs_private {scalar_t__ psmode; int surpriseremoved; struct net_device* dev; int /*<<< orphan*/  main_thread; int /*<<< orphan*/  work_thread; int /*<<< orphan*/  mcast_work; int /*<<< orphan*/  assoc_work; int /*<<< orphan*/  scan_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  CMD_OPTION_WAITFORRSP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ LBS802_11POWERMODECAM ; 
 scalar_t__ LBS802_11POWERMODEMAX_PSP ; 
 int /*<<< orphan*/  LBS_DEB_MAIN ; 
 int /*<<< orphan*/  SIOCGIWAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct lbs_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 

void FUNC14(struct lbs_private *priv)
{
	struct net_device *dev = priv->dev;
	union iwreq_data wrqu;

	FUNC5(LBS_DEB_MAIN);

	FUNC10(priv);
	FUNC11(priv);

	dev = priv->dev;

	FUNC0(&priv->scan_work);
	FUNC0(&priv->assoc_work);
	FUNC1(&priv->mcast_work);

	/* worker thread destruction blocks on the in-flight command which
	 * should have been cleared already in lbs_stop_card().
	 */
	FUNC7("destroying worker thread\n");
	FUNC2(priv->work_thread);
	FUNC7("done destroying worker thread\n");

	if (priv->psmode == LBS802_11POWERMODEMAX_PSP) {
		priv->psmode = LBS802_11POWERMODECAM;
		FUNC9(priv, CMD_OPTION_WAITFORRSP);
	}

	FUNC12(wrqu.ap_addr.sa_data, 0xaa, ETH_ALEN);
	wrqu.ap_addr.sa_family = ARPHRD_ETHER;
	FUNC13(priv->dev, SIOCGIWAP, &wrqu, NULL);

	/* Stop the thread servicing the interrupts */
	priv->surpriseremoved = 1;
	FUNC4(priv->main_thread);

	FUNC8(priv);

	priv->dev = NULL;
	FUNC3(dev);

	FUNC6(LBS_DEB_MAIN);
}