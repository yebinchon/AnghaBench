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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adcxx {unsigned long reference; int /*<<< orphan*/  lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ERESTARTSYS ; 
 struct adcxx* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,int,unsigned long*) ; 
 struct spi_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
	struct device_attribute *devattr, const char *buf, size_t count)
{
	struct spi_device *spi = FUNC4(dev);
	struct adcxx *adc = FUNC0(&spi->dev);
	unsigned long value;

	if (FUNC3(buf, 10, &value))
		return -EINVAL;

	if (FUNC1(&adc->lock))
		return -ERESTARTSYS;

	adc->reference = value;

	FUNC2(&adc->lock);

	return count;
}