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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  channel; } ;
struct TYPE_4__ {int /*<<< orphan*/  auth_mode; } ;
struct lbs_private {int mac_control; int radio_on; int enablehwauto; int /*<<< orphan*/  event_fifo; scalar_t__* resp_len; scalar_t__ resp_idx; int /*<<< orphan*/  cmd_pending; int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  cmdpendingq; int /*<<< orphan*/  cmdfreeq; int /*<<< orphan*/  command_timer; int /*<<< orphan*/  lock; int /*<<< orphan*/  psstate; int /*<<< orphan*/  psmode; int /*<<< orphan*/  capability; TYPE_2__ curbssparams; int /*<<< orphan*/  mode; TYPE_1__ secinfo; void* mesh_connect_status; void* connect_status; int /*<<< orphan*/  current_addr; int /*<<< orphan*/  network_free_list; TYPE_3__* networks; int /*<<< orphan*/  network_list; } ;
struct bss_descriptor {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int CMD_ACT_MAC_RX_ON ; 
 int CMD_ACT_MAC_TX_ON ; 
 int /*<<< orphan*/  DEFAULT_AD_HOC_CHANNEL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IW_AUTH_ALG_OPEN_SYSTEM ; 
 int /*<<< orphan*/  IW_MODE_INFRA ; 
 int /*<<< orphan*/  LBS802_11POWERMODECAM ; 
 int /*<<< orphan*/  LBS_DEB_MAIN ; 
 void* LBS_DISCONNECTED ; 
 int MAX_NETWORK_COUNT ; 
 int /*<<< orphan*/  PS_STATE_FULL_POWER ; 
 int /*<<< orphan*/  WLAN_CAPABILITY_SHORT_PREAMBLE ; 
 int /*<<< orphan*/  command_timer_fn ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct lbs_private *priv)
{
	size_t bufsize;
	int i, ret = 0;

	FUNC6(LBS_DEB_MAIN);

	/* Allocate buffer to store the BSSID list */
	bufsize = MAX_NETWORK_COUNT * sizeof(struct bss_descriptor);
	priv->networks = FUNC4(bufsize, GFP_KERNEL);
	if (!priv->networks) {
		FUNC8("Out of memory allocating beacons\n");
		ret = -1;
		goto out;
	}

	/* Initialize scan result lists */
	FUNC0(&priv->network_free_list);
	FUNC0(&priv->network_list);
	for (i = 0; i < MAX_NETWORK_COUNT; i++) {
		FUNC9(&priv->networks[i].list,
			      &priv->network_free_list);
	}

	FUNC10(priv->current_addr, 0xff, ETH_ALEN);

	priv->connect_status = LBS_DISCONNECTED;
	priv->mesh_connect_status = LBS_DISCONNECTED;
	priv->secinfo.auth_mode = IW_AUTH_ALG_OPEN_SYSTEM;
	priv->mode = IW_MODE_INFRA;
	priv->curbssparams.channel = DEFAULT_AD_HOC_CHANNEL;
	priv->mac_control = CMD_ACT_MAC_RX_ON | CMD_ACT_MAC_TX_ON;
	priv->radio_on = 1;
	priv->enablehwauto = 1;
	priv->capability = WLAN_CAPABILITY_SHORT_PREAMBLE;
	priv->psmode = LBS802_11POWERMODECAM;
	priv->psstate = PS_STATE_FULL_POWER;

	FUNC11(&priv->lock);

	FUNC12(&priv->command_timer, command_timer_fn,
		(unsigned long)priv);

	FUNC0(&priv->cmdfreeq);
	FUNC0(&priv->cmdpendingq);

	FUNC13(&priv->driver_lock);
	FUNC2(&priv->cmd_pending);

	/* Allocate the command buffers */
	if (FUNC5(priv)) {
		FUNC8("Out of memory allocating command buffers\n");
		ret = -ENOMEM;
		goto out;
	}
	priv->resp_idx = 0;
	priv->resp_len[0] = priv->resp_len[1] = 0;

	/* Create the event FIFO */
	priv->event_fifo = FUNC3(sizeof(u32) * 16, GFP_KERNEL, NULL);
	if (FUNC1(priv->event_fifo)) {
		FUNC8("Out of memory allocating event FIFO buffer\n");
		ret = -ENOMEM;
		goto out;
	}

out:
	FUNC7(LBS_DEB_MAIN, "ret %d", ret);

	return ret;
}