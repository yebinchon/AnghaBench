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
typedef  char u8 ;
struct spi_transfer {char* tx_buf; int len; char* rx_buf; } ;
struct spi_message {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_message*) ; 

__attribute__((used)) static void FUNC3(struct spi_message *m, struct spi_transfer *x,
		u8 *addr, size_t count, char *tx, char *rx)
{
	FUNC2(m);
	FUNC0(x, 0, 2 * sizeof(*x));

	x->tx_buf = addr;
	x->len = 1;
	FUNC1(x, m);

	x++;

	x->tx_buf = tx;
	x->rx_buf = rx;
	x->len = count;
	FUNC1(x, m);
}