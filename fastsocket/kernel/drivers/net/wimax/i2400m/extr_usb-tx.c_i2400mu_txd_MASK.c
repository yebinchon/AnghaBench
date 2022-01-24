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
struct i2400m {int dummy; } ;
struct i2400mu {int /*<<< orphan*/  tx_wq; TYPE_1__* usb_iface; struct i2400m i2400m; } ;
struct i2400m_msg_hdr {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,struct i2400m_msg_hdr*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400mu*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,struct i2400mu*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct device*,char*,...) ; 
 struct i2400m_msg_hdr* FUNC5 (struct i2400m*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2400mu*,struct i2400m_msg_hdr*,size_t) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
int FUNC10(void *_i2400mu)
{
	int result = 0;
	struct i2400mu *i2400mu = _i2400mu;
	struct i2400m *i2400m = &i2400mu->i2400m;
	struct device *dev = &i2400mu->usb_iface->dev;
	struct i2400m_msg_hdr *tx_msg;
	size_t tx_msg_size;

	FUNC3(4, dev, "(i2400mu %p)\n", i2400mu);

	while (1) {
		FUNC4(2, dev, "TX: waiting for messages\n");
		tx_msg = NULL;
		FUNC9(
			i2400mu->tx_wq,
			(FUNC8()	/* check this first! */
			 || (tx_msg = FUNC5(i2400m, &tx_msg_size)))
			);
		if (FUNC8())
			break;
		FUNC0(tx_msg == NULL);	/* should not happen...*/
		FUNC4(2, dev, "TX: submitting %zu bytes\n", tx_msg_size);
		FUNC1(5, dev, tx_msg, tx_msg_size);
		/* Yeah, we ignore errors ... not much we can do */
		FUNC7(i2400mu, tx_msg, tx_msg_size);
		FUNC6(i2400m);	/* ack it, advance the FIFO */
		if (result < 0)
			break;
	}
	FUNC2(4, dev, "(i2400mu %p) = %d\n", i2400mu, result);
	return result;
}