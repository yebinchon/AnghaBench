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
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* net_dev; } ;
struct i2400m {TYPE_1__ wimax_dev; } ;
struct i2400mu {int rx_size; TYPE_2__* usb_iface; int /*<<< orphan*/  urb_edc; int /*<<< orphan*/  rx_size_acc; int /*<<< orphan*/  rx_size_cnt; int /*<<< orphan*/  rx_pending_count; int /*<<< orphan*/  rx_wq; struct i2400m i2400m; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDC_ERROR_TIMEFRAME ; 
 int /*<<< orphan*/  EDC_MAX_ERRORS ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,struct device*,char*,struct i2400mu*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,struct device*,char*,struct i2400mu*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct i2400m*,struct sk_buff*) ; 
 struct sk_buff* FUNC11 (struct i2400mu*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct i2400mu*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
int FUNC18(void *_i2400mu)
{
	int result = 0;
	struct i2400mu *i2400mu = _i2400mu;
	struct i2400m *i2400m = &i2400mu->i2400m;
	struct device *dev = &i2400mu->usb_iface->dev;
	struct net_device *net_dev = i2400m->wimax_dev.net_dev;
	size_t pending;
	int rx_size;
	struct sk_buff *rx_skb;

	FUNC6(4, dev, "(i2400mu %p)\n", i2400mu);
	while (1) {
		FUNC7(2, dev, "TX: waiting for messages\n");
		pending = 0;
		FUNC17(
			i2400mu->rx_wq,
			(FUNC14()	/* check this first! */
			 || (pending = FUNC4(&i2400mu->rx_pending_count)))
			);
		if (FUNC14())
			break;
		if (pending == 0)
			continue;
		rx_size = i2400mu->rx_size;
		FUNC7(2, dev, "RX: reading up to %d bytes\n", rx_size);
		rx_skb = FUNC2(net_dev, rx_size, GFP_KERNEL);
		if (rx_skb == NULL) {
			FUNC8(dev, "RX: can't allocate skb [%d bytes]\n",
				rx_size);
			FUNC15(50);	/* give it some time? */
			continue;
		}

		/* Receive the message with the payloads */
		rx_skb = FUNC11(i2400mu, rx_skb);
		result = FUNC1(rx_skb);
		if (FUNC0(rx_skb))
			goto out;
		FUNC3(&i2400mu->rx_pending_count);
		if (rx_skb == NULL || rx_skb->len == 0) {
			/* some "ignorable" condition */
			FUNC13(rx_skb);
			continue;
		}

		/* Deliver the message to the generic i2400m code */
		i2400mu->rx_size_cnt++;
		i2400mu->rx_size_acc += rx_skb->len;
		result = FUNC10(i2400m, rx_skb);
		if (result == -EIO
		    && FUNC9(&i2400mu->urb_edc,
			       EDC_MAX_ERRORS, EDC_ERROR_TIMEFRAME)) {
			goto error_reset;
		}

		/* Maybe adjust RX buffer size */
		FUNC12(i2400mu);
	}
	result = 0;
out:
	FUNC5(4, dev, "(i2400mu %p) = %d\n", i2400mu, result);
	return result;

error_reset:
	FUNC8(dev, "RX: maximum errors in received buffer exceeded; "
		"resetting device\n");
	FUNC16(i2400mu->usb_iface);
	goto out;
}