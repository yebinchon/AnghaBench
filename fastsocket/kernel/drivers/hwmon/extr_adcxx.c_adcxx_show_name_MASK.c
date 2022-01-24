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
struct adcxx {int channels; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct adcxx* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct spi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute
			      *devattr, char *buf)
{
	struct spi_device *spi = FUNC2(dev);
	struct adcxx *adc = FUNC0(&spi->dev);

	return FUNC1(buf, "adcxx%ds\n", adc->channels);
}