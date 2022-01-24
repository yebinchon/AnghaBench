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
typedef  int u8 ;
typedef  int /*<<< orphan*/  tx_buf ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adcxx {int reference; int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  rx_buf ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct adcxx* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct spi_device*,int*,int,int*,int) ; 
 int FUNC6 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC7 (struct device_attribute*) ; 
 struct spi_device* FUNC8 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
		struct device_attribute *devattr, char *buf)
{
	struct spi_device *spi = FUNC8(dev);
	struct sensor_device_attribute *attr = FUNC7(devattr);
	struct adcxx *adc = FUNC1(&spi->dev);
	u8 tx_buf[2] = { attr->index << 3 }; /* other bits are don't care */
	u8 rx_buf[2];
	int status;
	int value;

	if (FUNC3(&adc->lock))
		return -ERESTARTSYS;

	status = FUNC5(spi, tx_buf, sizeof(tx_buf),
					rx_buf, sizeof(rx_buf));
	if (status < 0) {
		FUNC2(dev, "spi_write_then_read failed with status %d\n",
				status);
		goto out;
	}

	value = (rx_buf[0] << 8) + rx_buf[1];
	FUNC0(dev, "raw value = 0x%x\n", value);

	value = value * adc->reference >> 12;
	status = FUNC6(buf, "%d\n", value);
out:
	FUNC4(&adc->lock);
	return status;
}