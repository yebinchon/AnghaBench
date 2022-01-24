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
typedef  int u16 ;
struct spi_transfer {int* tx_buf; int* rx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct max3100_port {int tx_empty; TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int MAX3100_T ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_message*) ; 
 int FUNC6 (TYPE_1__*,struct spi_message*) ; 

__attribute__((used)) static int FUNC7(struct max3100_port *s, u16 tx, u16 *rx)
{
	struct spi_message message;
	u16 etx, erx;
	int status;
	struct spi_transfer tran = {
		.tx_buf = &etx,
		.rx_buf = &erx,
		.len = 2,
	};

	etx = FUNC1(tx);
	FUNC5(&message);
	FUNC4(&tran, &message);
	status = FUNC6(s->spi, &message);
	if (status) {
		FUNC3(&s->spi->dev, "error while calling spi_sync\n");
		return -EIO;
	}
	*rx = FUNC0(erx);
	s->tx_empty = (*rx & MAX3100_T) > 0;
	FUNC2(&s->spi->dev, "%04x - %04x\n", tx, *rx);
	return 0;
}