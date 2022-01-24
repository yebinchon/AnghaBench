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
struct spidev_data {int /*<<< orphan*/  buffer; } ;
struct spi_transfer {size_t len; int /*<<< orphan*/  tx_buf; } ;
struct spi_message {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct spidev_data*,struct spi_message*) ; 

__attribute__((used)) static inline ssize_t
FUNC3(struct spidev_data *spidev, size_t len)
{
	struct spi_transfer	t = {
			.tx_buf		= spidev->buffer,
			.len		= len,
		};
	struct spi_message	m;

	FUNC1(&m);
	FUNC0(&t, &m);
	return FUNC2(spidev, &m);
}