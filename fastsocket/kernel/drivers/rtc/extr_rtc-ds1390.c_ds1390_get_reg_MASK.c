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
struct spi_device {int dummy; } ;
struct ds1390 {unsigned char* txrx_buf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct ds1390* FUNC0 (struct device*) ; 
 int FUNC1 (struct spi_device*,unsigned char*,int,unsigned char*,int) ; 
 struct spi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, unsigned char address,
				unsigned char *data)
{
	struct spi_device *spi = FUNC2(dev);
	struct ds1390 *chip = FUNC0(dev);
	int status;

	if (!data)
		return -EINVAL;

	/* Clear MSB to indicate read */
	chip->txrx_buf[0] = address & 0x7f;
	/* do the i/o */
	status = FUNC1(spi, chip->txrx_buf, 1, chip->txrx_buf, 1);
	if (status != 0)
		return status;

	*data = chip->txrx_buf[1];

	return 0;
}