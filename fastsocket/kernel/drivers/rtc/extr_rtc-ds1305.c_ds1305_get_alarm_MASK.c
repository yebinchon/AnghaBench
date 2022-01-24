#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct spi_device {int dummy; } ;
struct TYPE_2__ {int tm_mday; int tm_mon; int tm_year; int tm_wday; int tm_isdst; int /*<<< orphan*/  tm_hour; void* tm_min; void* tm_sec; } ;
struct rtc_wkalrm {int enabled; int pending; TYPE_1__ time; } ;
struct ds1305 {int* ctrl; struct spi_device* spi; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int DS1305_AEI0 ; 
 int FUNC0 (size_t) ; 
 int DS1305_ALM_DISABLE ; 
 int DS1305_ALM_LEN ; 
 int DS1305_CONTROL ; 
 size_t DS1305_HOUR ; 
 size_t DS1305_MIN ; 
 size_t DS1305_SEC ; 
 size_t DS1305_WDAY ; 
 int EIO ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct ds1305* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,char*,int,int,int,int) ; 
 int FUNC5 (struct spi_device*,int*,int,int*,int) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alm)
{
	struct ds1305	*ds1305 = FUNC3(dev);
	struct spi_device *spi = ds1305->spi;
	u8		addr;
	int		status;
	u8		buf[DS1305_ALM_LEN];

	/* Refresh control register cache BEFORE reading ALM0 registers,
	 * since reading alarm registers acks any pending IRQ.  That
	 * makes returning "pending" status a bit of a lie, but that bit
	 * of EFI status is at best fragile anyway (given IRQ handlers).
	 */
	addr = DS1305_CONTROL;
	status = FUNC5(spi, &addr, sizeof addr,
			ds1305->ctrl, sizeof ds1305->ctrl);
	if (status < 0)
		return status;

	alm->enabled = !!(ds1305->ctrl[0] & DS1305_AEI0);
	alm->pending = !!(ds1305->ctrl[1] & DS1305_AEI0);

	/* get and check ALM0 registers */
	addr = FUNC0(DS1305_SEC);
	status = FUNC5(spi, &addr, sizeof addr,
			buf, sizeof buf);
	if (status < 0)
		return status;

	FUNC4(dev, "%s: %02x %02x %02x %02x\n",
		"alm0 read", buf[DS1305_SEC], buf[DS1305_MIN],
		buf[DS1305_HOUR], buf[DS1305_WDAY]);

	if ((DS1305_ALM_DISABLE & buf[DS1305_SEC])
			|| (DS1305_ALM_DISABLE & buf[DS1305_MIN])
			|| (DS1305_ALM_DISABLE & buf[DS1305_HOUR]))
		return -EIO;

	/* Stuff these values into alm->time and let RTC framework code
	 * fill in the rest ... and also handle rollover to tomorrow when
	 * that's needed.
	 */
	alm->time.tm_sec = FUNC1(buf[DS1305_SEC]);
	alm->time.tm_min = FUNC1(buf[DS1305_MIN]);
	alm->time.tm_hour = FUNC2(buf[DS1305_HOUR]);
	alm->time.tm_mday = -1;
	alm->time.tm_mon = -1;
	alm->time.tm_year = -1;
	/* next three fields are unused by Linux */
	alm->time.tm_wday = -1;
	alm->time.tm_mday = -1;
	alm->time.tm_isdst = -1;

	return 0;
}