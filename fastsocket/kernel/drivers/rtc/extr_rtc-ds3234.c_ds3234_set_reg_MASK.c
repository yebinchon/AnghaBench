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
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct spi_device*,unsigned char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct spi_device* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, unsigned char address,
				unsigned char data)
{
	struct spi_device *spi = FUNC1(dev);
	unsigned char buf[2];

	/* MSB must be '1' to indicate write */
	buf[0] = address | 0x80;
	buf[1] = data;

	return FUNC0(spi, buf, 2, NULL, 0);
}