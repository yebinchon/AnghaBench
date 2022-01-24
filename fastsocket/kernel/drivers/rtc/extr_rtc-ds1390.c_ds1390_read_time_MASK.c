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
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_wday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct ds1390 {int* txrx_buf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int DS1390_REG_SECONDS ; 
 void* FUNC0 (int) ; 
 struct ds1390* FUNC1 (struct device*) ; 
 int FUNC2 (struct rtc_time*) ; 
 int FUNC3 (struct spi_device*,int*,int,int*,int) ; 
 struct spi_device* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *dt)
{
	struct spi_device *spi = FUNC4(dev);
	struct ds1390 *chip = FUNC1(dev);
	int status;

	/* build the message */
	chip->txrx_buf[0] = DS1390_REG_SECONDS;

	/* do the i/o */
	status = FUNC3(spi, chip->txrx_buf, 1, chip->txrx_buf, 8);
	if (status != 0)
		return status;

	/* The chip sends data in this order:
	 * Seconds, Minutes, Hours, Day, Date, Month / Century, Year */
	dt->tm_sec	= FUNC0(chip->txrx_buf[0]);
	dt->tm_min	= FUNC0(chip->txrx_buf[1]);
	dt->tm_hour	= FUNC0(chip->txrx_buf[2]);
	dt->tm_wday	= FUNC0(chip->txrx_buf[3]);
	dt->tm_mday	= FUNC0(chip->txrx_buf[4]);
	/* mask off century bit */
	dt->tm_mon	= FUNC0(chip->txrx_buf[5] & 0x7f) - 1;
	/* adjust for century bit */
	dt->tm_year = FUNC0(chip->txrx_buf[6]) + ((chip->txrx_buf[5] & 0x80) ? 100 : 0);

	return FUNC2(dt);
}