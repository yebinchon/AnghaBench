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
typedef  int /*<<< orphan*/  u8 ;
struct spi_transfer {void const* tx_buf; size_t len; int /*<<< orphan*/  delay_usecs; int /*<<< orphan*/  cs_change; int /*<<< orphan*/ * rx_buf; } ;
struct spi_message {scalar_t__ status; int actual_length; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_message*) ; 
 scalar_t__ FUNC2 (struct spi_device*,struct spi_message*) ; 

__attribute__((used)) static inline int FUNC3(struct spi_device *spi, u8 * buf, size_t len)
{
	struct spi_transfer t = {
		.tx_buf = (const void *)buf,
		.rx_buf = buf,
		.len = len,
		.cs_change = 0,
		.delay_usecs = 0,
	};
	struct spi_message m;

	FUNC1(&m);
	FUNC0(&t, &m);
	if (FUNC2(spi, &m) != 0 || m.status != 0)
		return -EINVAL;
	return len - m.actual_length;
}