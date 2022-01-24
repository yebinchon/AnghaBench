#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sa_family; int /*<<< orphan*/ * sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct TYPE_4__ {scalar_t__ ssid_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  bssid; } ;
struct lbs_private {scalar_t__ connect_status; scalar_t__ psstate; TYPE_2__ curbssparams; scalar_t__ numSNRNF; scalar_t__ nextSNRNF; int /*<<< orphan*/ * rawNF; int /*<<< orphan*/ * rawSNR; int /*<<< orphan*/ * RSSI; int /*<<< orphan*/ * NF; int /*<<< orphan*/ * SNR; scalar_t__ tx_pending_len; int /*<<< orphan*/ * currenttxskb; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int ETH_ALEN ; 
 int IW_ESSID_MAX_SIZE ; 
 scalar_t__ LBS_CONNECTED ; 
 int /*<<< orphan*/  LBS_DEB_ASSOC ; 
 scalar_t__ LBS_DISCONNECTED ; 
 scalar_t__ PS_STATE_FULL_POWER ; 
 int /*<<< orphan*/  SIOCGIWAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 

void FUNC10(struct lbs_private *priv)
{
	union iwreq_data wrqu;

	if (priv->connect_status != LBS_CONNECTED)
		return;

	FUNC2(LBS_DEB_ASSOC);

	FUNC5(wrqu.ap_addr.sa_data, 0x00, ETH_ALEN);
	wrqu.ap_addr.sa_family = ARPHRD_ETHER;

	/*
	 * Cisco AP sends EAP failure and de-auth in less than 0.5 ms.
	 * It causes problem in the Supplicant
	 */

	FUNC6(1000);
	FUNC9(priv->dev, SIOCGIWAP, &wrqu, NULL);

	/* report disconnect to upper layer */
	FUNC8(priv->dev);
	FUNC7(priv->dev);

	/* Free Tx and Rx packets */
	FUNC0(priv->currenttxskb);
	priv->currenttxskb = NULL;
	priv->tx_pending_len = 0;

	/* reset SNR/NF/RSSI values */
	FUNC5(priv->SNR, 0x00, sizeof(priv->SNR));
	FUNC5(priv->NF, 0x00, sizeof(priv->NF));
	FUNC5(priv->RSSI, 0x00, sizeof(priv->RSSI));
	FUNC5(priv->rawSNR, 0x00, sizeof(priv->rawSNR));
	FUNC5(priv->rawNF, 0x00, sizeof(priv->rawNF));
	priv->nextSNRNF = 0;
	priv->numSNRNF = 0;
	priv->connect_status = LBS_DISCONNECTED;

	/* Clear out associated SSID and BSSID since connection is
	 * no longer valid.
	 */
	FUNC5(&priv->curbssparams.bssid, 0, ETH_ALEN);
	FUNC5(&priv->curbssparams.ssid, 0, IW_ESSID_MAX_SIZE);
	priv->curbssparams.ssid_len = 0;

	if (priv->psstate != PS_STATE_FULL_POWER) {
		/* make firmware to exit PS mode */
		FUNC1("disconnected, so exit PS mode\n");
		FUNC4(priv, 0);
	}
	FUNC3(LBS_DEB_ASSOC);
}