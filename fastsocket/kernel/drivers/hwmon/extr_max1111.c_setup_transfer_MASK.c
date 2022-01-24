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
struct spi_transfer {int len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int dummy; } ;
struct max1111_data {int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; struct spi_transfer* xfer; struct spi_message msg; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX1111_RX_BUF_SIZE ; 
 int /*<<< orphan*/  MAX1111_TX_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_message*) ; 

__attribute__((used)) static int FUNC4(struct max1111_data *data)
{
	struct spi_message *m;
	struct spi_transfer *x;

	data->tx_buf = FUNC1(MAX1111_TX_BUF_SIZE, GFP_KERNEL);
	if (!data->tx_buf)
		return -ENOMEM;

	data->rx_buf = FUNC1(MAX1111_RX_BUF_SIZE, GFP_KERNEL);
	if (!data->rx_buf) {
		FUNC0(data->tx_buf);
		return -ENOMEM;
	}

	m = &data->msg;
	x = &data->xfer[0];

	FUNC3(m);

	x->tx_buf = &data->tx_buf[0];
	x->len = 1;
	FUNC2(x, m);

	x++;
	x->rx_buf = &data->rx_buf[0];
	x->len = 2;
	FUNC2(x, m);

	return 0;
}