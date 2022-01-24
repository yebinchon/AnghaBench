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
struct device {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (unsigned char) ; 
 int FUNC1 (struct rtc_time*) ; 
 int FUNC2 (struct spi_device*,unsigned char*,int,unsigned char*,int) ; 
 struct spi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *dt)
{
	int err;
	unsigned char buf[8];
	struct spi_device *spi = FUNC3(dev);

	buf[0] = 0x00; /* Start address */

	err = FUNC2(spi, buf, 1, buf, 8);
	if (err != 0)
		return err;

	/* Seconds, Minutes, Hours, Day, Date, Month, Year */
	dt->tm_sec	= FUNC0(buf[0]);
	dt->tm_min	= FUNC0(buf[1]);
	dt->tm_hour	= FUNC0(buf[2] & 0x3f);
	dt->tm_wday	= FUNC0(buf[3]) - 1; /* 0 = Sun */
	dt->tm_mday	= FUNC0(buf[4]);
	dt->tm_mon	= FUNC0(buf[5] & 0x1f) - 1; /* 0 = Jan */
	dt->tm_year 	= FUNC0(buf[6] & 0xff) + 100; /* Assume 20YY */

	return FUNC1(dt);
}