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
struct i2400m {scalar_t__ bus_tx_block_size; int /*<<< orphan*/ * tx_buf; scalar_t__ tx_sequence; int /*<<< orphan*/  wake_tx_ws; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2400M_TX_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2400m_wake_tx_work ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct i2400m *i2400m)
{
	int result;

	/* Do this here only once -- can't do on
	 * i2400m_hard_start_xmit() as we'll cause race conditions if
	 * the WS was scheduled on another CPU */
	FUNC1(&i2400m->wake_tx_ws, i2400m_wake_tx_work);

	i2400m->tx_sequence = 0;
	i2400m->tx_buf = FUNC2(I2400M_TX_BUF_SIZE, GFP_KERNEL);
	if (i2400m->tx_buf == NULL)
		result = -ENOMEM;
	else
		result = 0;
	/* Huh? the bus layer has to define this... */
	FUNC0(i2400m->bus_tx_block_size == 0);
	return result;

}