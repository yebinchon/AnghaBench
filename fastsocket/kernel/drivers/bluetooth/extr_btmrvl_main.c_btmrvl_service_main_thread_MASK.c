#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_t ;
typedef  int /*<<< orphan*/  ulong ;
struct sk_buff {scalar_t__ len; } ;
struct btmrvl_thread {int /*<<< orphan*/  wait_q; struct btmrvl_private* priv; } ;
struct TYPE_8__ {TYPE_2__* hcidev; int /*<<< orphan*/  tx_dnld_rdy; } ;
struct btmrvl_private {TYPE_3__ btmrvl_dev; int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  (* hw_wakeup_firmware ) (struct btmrvl_private*) ;struct btmrvl_adapter* adapter; } ;
struct btmrvl_adapter {scalar_t__ ps_state; int /*<<< orphan*/  tx_queue; scalar_t__ wakeup_tries; scalar_t__ int_count; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  byte_tx; int /*<<< orphan*/  err_tx; } ;
struct TYPE_7__ {TYPE_1__ stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PF_NOFREEZE ; 
 scalar_t__ PS_SLEEP ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct btmrvl_private*,struct sk_buff*) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct btmrvl_private*) ; 

__attribute__((used)) static int FUNC14(void *data)
{
	struct btmrvl_thread *thread = data;
	struct btmrvl_private *priv = thread->priv;
	struct btmrvl_adapter *adapter = priv->adapter;
	wait_queue_t wait;
	struct sk_buff *skb;
	ulong flags;

	FUNC3(&wait, current);

	current->flags |= PF_NOFREEZE;

	for (;;) {
		FUNC1(&thread->wait_q, &wait);

		FUNC8(TASK_INTERRUPTIBLE);

		if (adapter->wakeup_tries ||
				((!adapter->int_count) &&
				(!priv->btmrvl_dev.tx_dnld_rdy ||
				FUNC10(&adapter->tx_queue)))) {
			FUNC0("main_thread is sleeping...");
			FUNC7();
		}

		FUNC8(TASK_RUNNING);

		FUNC6(&thread->wait_q, &wait);

		FUNC0("main_thread woke up");

		if (FUNC5()) {
			FUNC0("main_thread: break from main thread");
			break;
		}

		FUNC11(&priv->driver_lock, flags);
		if (adapter->int_count) {
			adapter->int_count = 0;
		} else if (adapter->ps_state == PS_SLEEP &&
					!FUNC10(&adapter->tx_queue)) {
			FUNC12(&priv->driver_lock, flags);
			adapter->wakeup_tries++;
			priv->hw_wakeup_firmware(priv);
			continue;
		}
		FUNC12(&priv->driver_lock, flags);

		if (adapter->ps_state == PS_SLEEP)
			continue;

		if (!priv->btmrvl_dev.tx_dnld_rdy)
			continue;

		skb = FUNC9(&adapter->tx_queue);
		if (skb) {
			if (FUNC2(priv, skb))
				priv->btmrvl_dev.hcidev->stat.err_tx++;
			else
				priv->btmrvl_dev.hcidev->stat.byte_tx += skb->len;

			FUNC4(skb);
		}
	}

	return 0;
}