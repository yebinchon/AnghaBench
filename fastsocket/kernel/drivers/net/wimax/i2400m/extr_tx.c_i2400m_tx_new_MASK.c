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
struct i2400m_msg_hdr {int /*<<< orphan*/  size; } ;
struct i2400m {int tx_buf; struct i2400m_msg_hdr* tx_msg; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I2400M_TX_PLD_SIZE ; 
 struct i2400m_msg_hdr* TAIL_FULL ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,...) ; 
 struct device* FUNC2 (struct i2400m*) ; 
 struct i2400m_msg_hdr* FUNC3 (struct i2400m*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2400m_msg_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC6(struct i2400m *i2400m)
{
	struct device *dev = FUNC2(i2400m);
	struct i2400m_msg_hdr *tx_msg;
	FUNC0(i2400m->tx_msg != NULL);
try_head:
	tx_msg = FUNC3(i2400m, I2400M_TX_PLD_SIZE, 0);
	if (tx_msg == NULL)
		goto out;
	else if (tx_msg == TAIL_FULL) {
		FUNC4(i2400m);
		FUNC1(2, dev, "new TX message: tail full, trying head\n");
		goto try_head;
	}
	FUNC5(tx_msg, 0, I2400M_TX_PLD_SIZE);
	tx_msg->size = I2400M_TX_PLD_SIZE;
out:
	i2400m->tx_msg = tx_msg;
	FUNC1(2, dev, "new TX message: %p @%zu\n",
		 tx_msg, (void *) tx_msg - i2400m->tx_buf);
}