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
struct lbs_private {int** SNR; int** NF; void*** RSSI; } ;
struct cmd_ds_802_11_rssi_rsp {int /*<<< orphan*/  avgnoisefloor; int /*<<< orphan*/  avgSNR; int /*<<< orphan*/  noisefloor; int /*<<< orphan*/  SNR; } ;
struct TYPE_2__ {struct cmd_ds_802_11_rssi_rsp rssirsp; } ;
struct cmd_ds_command {TYPE_1__ params; } ;

/* Variables and functions */
 int AVG_SCALE ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  LBS_DEB_CMD ; 
 size_t TYPE_AVG ; 
 size_t TYPE_BEACON ; 
 size_t TYPE_NOAVG ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct lbs_private *priv,
				struct cmd_ds_command *resp)
{
	struct cmd_ds_802_11_rssi_rsp *rssirsp = &resp->params.rssirsp;

	FUNC3(LBS_DEB_CMD);

	/* store the non average value */
	priv->SNR[TYPE_BEACON][TYPE_NOAVG] = FUNC1(&rssirsp->SNR);
	priv->NF[TYPE_BEACON][TYPE_NOAVG] = FUNC1(&rssirsp->noisefloor);

	priv->SNR[TYPE_BEACON][TYPE_AVG] = FUNC1(&rssirsp->avgSNR);
	priv->NF[TYPE_BEACON][TYPE_AVG] = FUNC1(&rssirsp->avgnoisefloor);

	priv->RSSI[TYPE_BEACON][TYPE_NOAVG] =
	    FUNC0(priv->SNR[TYPE_BEACON][TYPE_NOAVG],
		     priv->NF[TYPE_BEACON][TYPE_NOAVG]);

	priv->RSSI[TYPE_BEACON][TYPE_AVG] =
	    FUNC0(priv->SNR[TYPE_BEACON][TYPE_AVG] / AVG_SCALE,
		     priv->NF[TYPE_BEACON][TYPE_AVG] / AVG_SCALE);

	FUNC2("RSSI: beacon %d, avg %d\n",
	       priv->RSSI[TYPE_BEACON][TYPE_NOAVG],
	       priv->RSSI[TYPE_BEACON][TYPE_AVG]);

	FUNC4(LBS_DEB_CMD);
	return 0;
}