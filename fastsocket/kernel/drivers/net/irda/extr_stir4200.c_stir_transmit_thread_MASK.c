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
struct stir_cb {unsigned int speed; scalar_t__ receiving; struct net_device* netdev; int /*<<< orphan*/  tx_pending; } ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CTRL1_RXPWD ; 
 int CTRL1_TXPWD ; 
 int /*<<< orphan*/  REG_CTRL1 ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ FUNC0 (struct stir_cb*,unsigned int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct stir_cb*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 unsigned int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct stir_cb*) ; 
 int /*<<< orphan*/  FUNC12 (struct stir_cb*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct stir_cb*,struct sk_buff*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct stir_cb*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(void *arg)
{
	struct stir_cb *stir = arg;
	struct net_device *dev = stir->netdev;
	struct sk_buff *skb;

        while (!FUNC7()) {
#ifdef CONFIG_PM
		/* if suspending, then power off and wait */
		if (unlikely(freezing(current))) {
			if (stir->receiving)
				receive_stop(stir);
			else
				fifo_txwait(stir, -1);

			write_reg(stir, REG_CTRL1, CTRL1_TXPWD|CTRL1_RXPWD);

			refrigerator();

			if (change_speed(stir, stir->speed))
				break;
		}
#endif

		/* if something to send? */
		skb = FUNC19(&stir->tx_pending, NULL);
		if (skb) {
			unsigned new_speed = FUNC6(skb);
			FUNC10(dev);

			if (skb->len > 0)
				FUNC16(stir, skb);
			FUNC2(skb);

			if ((new_speed != -1) && (stir->speed != new_speed)) {
				if (FUNC3(stir, -1) ||
				    FUNC0(stir, new_speed))
					break;
			}
			continue;
		}

		/* nothing to send? start receiving */
		if (!stir->receiving 
		    && FUNC5(dev)) {
			/* Wait otherwise chip gets confused. */
			if (FUNC3(stir, -1))
				break;

			if (FUNC17(FUNC11(stir))) {
				if (FUNC9())
					FUNC1(&dev->dev,
						 "%s: receive usb submit failed\n",
						 stir->netdev->name);
				stir->receiving = 0;
				FUNC8(10);
				continue;
			}
		}

		/* sleep if nothing to send */
                FUNC15(TASK_INTERRUPTIBLE);
                FUNC14();

	}
        return 0;
}