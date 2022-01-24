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
typedef  int /*<<< orphan*/  wait_queue_t ;
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {scalar_t__ currenttxskb; scalar_t__ psstate; scalar_t__ tx_pending_len; size_t resp_idx; scalar_t__ connect_status; int nr_retries; int (* hw_host_to_card ) (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ;scalar_t__ mesh_connect_status; int /*<<< orphan*/  cmd_pending; int /*<<< orphan*/  command_timer; int /*<<< orphan*/  driver_lock; scalar_t__ mesh_dev; scalar_t__ dev; void* dnld_sent; int /*<<< orphan*/  tx_pending_buf; int /*<<< orphan*/  cmdpendingq; struct cmd_ctrl_node* cur_cmd; int /*<<< orphan*/  fw_ready; int /*<<< orphan*/  event_fifo; scalar_t__ cmd_timed_out; int /*<<< orphan*/  (* reset_card ) (struct lbs_private*) ;scalar_t__* resp_len; int /*<<< orphan*/ * resp_buf; scalar_t__ surpriseremoved; int /*<<< orphan*/  waitq; void* psmode; } ;
struct cmd_ctrl_node {int /*<<< orphan*/  list; TYPE_1__* cmdbuf; } ;
typedef  int /*<<< orphan*/  event ;
struct TYPE_2__ {int /*<<< orphan*/  command; } ;

/* Variables and functions */
 void* DNLD_RES_RECEIVED ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 scalar_t__ LBS_CONNECTED ; 
 int /*<<< orphan*/  LBS_DEB_THREAD ; 
 int /*<<< orphan*/  MVMS_DAT ; 
 scalar_t__ PS_STATE_AWAKE ; 
 scalar_t__ PS_STATE_PRE_SLEEP ; 
 scalar_t__ PS_STATE_SLEEP ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct lbs_private*,struct cmd_ctrl_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC14 (struct lbs_private*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct lbs_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct lbs_private*) ; 
 int FUNC27 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC29(void *data)
{
	struct net_device *dev = data;
	struct lbs_private *priv = dev->ml_priv;
	wait_queue_t wait;

	FUNC7(LBS_DEB_THREAD);

	FUNC4(&wait, current);

	for (;;) {
		int shouldsleep;
		u8 resp_idx;

		FUNC9("1: currenttxskb %p, dnld_sent %d\n",
				priv->currenttxskb, priv->dnld_sent);

		FUNC2(&priv->waitq, &wait);
		FUNC23(TASK_INTERRUPTIBLE);
		FUNC24(&priv->driver_lock);

		if (FUNC5())
			shouldsleep = 0;	/* Bye */
		else if (priv->surpriseremoved)
			shouldsleep = 1;	/* We need to wait until we're _told_ to die */
		else if (priv->psstate == PS_STATE_SLEEP)
			shouldsleep = 1;	/* Sleep mode. Nothing we can do till it wakes */
		else if (priv->cmd_timed_out)
			shouldsleep = 0;	/* Command timed out. Recover */
		else if (!priv->fw_ready)
			shouldsleep = 1;	/* Firmware not ready. We're waiting for it */
		else if (priv->dnld_sent)
			shouldsleep = 1;	/* Something is en route to the device already */
		else if (priv->tx_pending_len > 0)
			shouldsleep = 0;	/* We've a packet to send */
		else if (priv->resp_len[priv->resp_idx])
			shouldsleep = 0;	/* We have a command response */
		else if (priv->cur_cmd)
			shouldsleep = 1;	/* Can't send a command; one already running */
		else if (!FUNC19(&priv->cmdpendingq))
			shouldsleep = 0;	/* We have a command to send */
		else if (FUNC1(priv->event_fifo))
			shouldsleep = 0;	/* We have an event to process */
		else
			shouldsleep = 1;	/* No command */

		if (shouldsleep) {
			FUNC9("sleeping, connect_status %d, "
				"psmode %d, psstate %d\n",
				priv->connect_status,
				priv->psmode, priv->psstate);
			FUNC25(&priv->driver_lock);
			FUNC22();
		} else
			FUNC25(&priv->driver_lock);

		FUNC9("2: currenttxskb %p, dnld_send %d\n",
			       priv->currenttxskb, priv->dnld_sent);

		FUNC23(TASK_RUNNING);
		FUNC21(&priv->waitq, &wait);

		FUNC9("3: currenttxskb %p, dnld_sent %d\n",
			       priv->currenttxskb, priv->dnld_sent);

		if (FUNC5()) {
			FUNC9("break from main thread\n");
			break;
		}

		if (priv->surpriseremoved) {
			FUNC9("adapter removed; waiting to die...\n");
			continue;
		}

		FUNC9("4: currenttxskb %p, dnld_sent %d\n",
		       priv->currenttxskb, priv->dnld_sent);

		/* Process any pending command response */
		FUNC24(&priv->driver_lock);
		resp_idx = priv->resp_idx;
		if (priv->resp_len[resp_idx]) {
			FUNC25(&priv->driver_lock);
			FUNC14(priv,
				priv->resp_buf[resp_idx],
				priv->resp_len[resp_idx]);
			FUNC24(&priv->driver_lock);
			priv->resp_len[resp_idx] = 0;
		}
		FUNC25(&priv->driver_lock);

		/* command timeout stuff */
		if (priv->cmd_timed_out && priv->cur_cmd) {
			struct cmd_ctrl_node *cmdnode = priv->cur_cmd;

			if (++priv->nr_retries > 3) {
				FUNC13("Excessive timeouts submitting "
					"command 0x%04x\n",
					FUNC17(cmdnode->cmdbuf->command));
				FUNC6(priv, cmdnode, -ETIMEDOUT);
				priv->nr_retries = 0;
				if (priv->reset_card)
					priv->reset_card(priv);
			} else {
				priv->cur_cmd = NULL;
				priv->dnld_sent = DNLD_RES_RECEIVED;
				FUNC13("requeueing command 0x%04x due "
					"to timeout (#%d)\n",
					FUNC17(cmdnode->cmdbuf->command),
					priv->nr_retries);

				/* Stick it back at the _top_ of the pending queue
				   for immediate resubmission */
				FUNC18(&cmdnode->list, &priv->cmdpendingq);
			}
		}
		priv->cmd_timed_out = 0;

		/* Process hardware events, e.g. card removed, link lost */
		FUNC24(&priv->driver_lock);
		while (FUNC1(priv->event_fifo)) {
			u32 event;

			FUNC0(priv->event_fifo, (unsigned char *) &event,
				sizeof(event));
			FUNC25(&priv->driver_lock);
			FUNC15(priv, event);
			FUNC24(&priv->driver_lock);
		}
		FUNC25(&priv->driver_lock);

		if (!priv->fw_ready)
			continue;

		/* Check if we need to confirm Sleep Request received previously */
		if (priv->psstate == PS_STATE_PRE_SLEEP &&
		    !priv->dnld_sent && !priv->cur_cmd) {
			if (priv->connect_status == LBS_CONNECTED) {
				FUNC9("pre-sleep, currenttxskb %p, "
					"dnld_sent %d, cur_cmd %p\n",
					priv->currenttxskb, priv->dnld_sent,
					priv->cur_cmd);

				FUNC16(priv);
			} else {
				/* workaround for firmware sending
				 * deauth/linkloss event immediately
				 * after sleep request; remove this
				 * after firmware fixes it
				 */
				priv->psstate = PS_STATE_AWAKE;
				FUNC12("ignore PS_SleepConfirm in "
					"non-connected state\n");
			}
		}

		/* The PS state is changed during processing of Sleep Request
		 * event above
		 */
		if ((priv->psstate == PS_STATE_SLEEP) ||
		    (priv->psstate == PS_STATE_PRE_SLEEP))
			continue;

		/* Execute the next command */
		if (!priv->dnld_sent && !priv->cur_cmd)
			FUNC11(priv);

		/* Wake-up command waiters which can't sleep in
		 * lbs_prepare_and_send_command
		 */
		if (!FUNC19(&priv->cmdpendingq))
			FUNC28(&priv->cmd_pending);

		FUNC24(&priv->driver_lock);
		if (!priv->dnld_sent && priv->tx_pending_len > 0) {
			int ret = priv->hw_host_to_card(priv, MVMS_DAT,
							priv->tx_pending_buf,
							priv->tx_pending_len);
			if (ret) {
				FUNC10("host_to_card failed %d\n", ret);
				priv->dnld_sent = DNLD_RES_RECEIVED;
			}
			priv->tx_pending_len = 0;
			if (!priv->currenttxskb) {
				/* We can wake the queues immediately if we aren't
				   waiting for TX feedback */
				if (priv->connect_status == LBS_CONNECTED)
					FUNC20(priv->dev);
				if (priv->mesh_dev &&
				    priv->mesh_connect_status == LBS_CONNECTED)
					FUNC20(priv->mesh_dev);
			}
		}
		FUNC25(&priv->driver_lock);
	}

	FUNC3(&priv->command_timer);
	FUNC28(&priv->cmd_pending);

	FUNC8(LBS_DEB_THREAD);
	return 0;
}