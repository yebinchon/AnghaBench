#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ channel; } ;
struct lbs_private {TYPE_3__ curbssparams; scalar_t__ mesh_dev; } ;
struct TYPE_4__ {scalar_t__ wep_enabled; } ;
struct assoc_request {scalar_t__ channel; int /*<<< orphan*/  flags; TYPE_2__* wep_keys; TYPE_1__ secinfo; } ;
struct TYPE_5__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOC_FLAG_SSID ; 
 int /*<<< orphan*/  ASSOC_FLAG_WEP_KEYS ; 
 int /*<<< orphan*/  CMD_ACT_MESH_CONFIG_START ; 
 int /*<<< orphan*/  CMD_ACT_MESH_CONFIG_STOP ; 
 int /*<<< orphan*/  LBS_DEB_ASSOC ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct lbs_private*,scalar_t__) ; 
 int FUNC5 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct lbs_private *priv,
                                struct assoc_request * assoc_req)
{
	int ret = 0;

	FUNC1(LBS_DEB_ASSOC);

	ret = FUNC5(priv);
	if (ret) {
		FUNC0("ASSOC: channel: error getting channel.\n");
		goto done;
	}

	if (assoc_req->channel == priv->curbssparams.channel)
		goto done;

	if (priv->mesh_dev) {
		/* Change mesh channel first; 21.p21 firmware won't let
		   you change channel otherwise (even though it'll return
		   an error to this */
		FUNC3(priv, CMD_ACT_MESH_CONFIG_STOP,
				assoc_req->channel);
	}

	FUNC0("ASSOC: channel: %d -> %d\n",
		      priv->curbssparams.channel, assoc_req->channel);

	ret = FUNC4(priv, assoc_req->channel);
	if (ret < 0)
		FUNC0("ASSOC: channel: error setting channel.\n");

	/* FIXME: shouldn't need to grab the channel _again_ after setting
	 * it since the firmware is supposed to return the new channel, but
	 * whatever... */
	ret = FUNC5(priv);
	if (ret) {
		FUNC0("ASSOC: channel: error getting channel.\n");
		goto done;
	}

	if (assoc_req->channel != priv->curbssparams.channel) {
		FUNC0("ASSOC: channel: failed to update channel to %d\n",
		              assoc_req->channel);
		goto restore_mesh;
	}

	if (   assoc_req->secinfo.wep_enabled
	    &&   (assoc_req->wep_keys[0].len
	       || assoc_req->wep_keys[1].len
	       || assoc_req->wep_keys[2].len
	       || assoc_req->wep_keys[3].len)) {
		/* Make sure WEP keys are re-sent to firmware */
		FUNC6(ASSOC_FLAG_WEP_KEYS, &assoc_req->flags);
	}

	/* Must restart/rejoin adhoc networks after channel change */
 	FUNC6(ASSOC_FLAG_SSID, &assoc_req->flags);

 restore_mesh:
	if (priv->mesh_dev)
		FUNC3(priv, CMD_ACT_MESH_CONFIG_START,
				priv->curbssparams.channel);

 done:
	FUNC2(LBS_DEB_ASSOC, "ret %d", ret);
	return ret;
}