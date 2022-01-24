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
typedef  int /*<<< orphan*/  txbuf ;
struct TYPE_2__ {struct rs5c348_plat_data* platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct rs5c348_plat_data {scalar_t__ rtc_24h; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int RS5C348_BIT_PM ; 
 int RS5C348_BIT_Y2K ; 
 int FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RS5C348_REG_CTL2 ; 
 size_t RS5C348_REG_DAY ; 
 size_t RS5C348_REG_HOURS ; 
 size_t RS5C348_REG_MINS ; 
 size_t RS5C348_REG_MONTH ; 
 size_t RS5C348_REG_SECS ; 
 size_t RS5C348_REG_WDAY ; 
 size_t RS5C348_REG_YEAR ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct spi_device*,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct spi_device* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct spi_device *spi = FUNC4(dev);
	struct rs5c348_plat_data *pdata = spi->dev.platform_data;
	u8 txbuf[5+7], *txp;
	int ret;

	/* Transfer 5 bytes before writing SEC.  This gives 31us for carry. */
	txp = txbuf;
	txbuf[0] = FUNC1(RS5C348_REG_CTL2); /* cmd, ctl2 */
	txbuf[1] = 0;	/* dummy */
	txbuf[2] = FUNC1(RS5C348_REG_CTL2); /* cmd, ctl2 */
	txbuf[3] = 0;	/* dummy */
	txbuf[4] = FUNC0(RS5C348_REG_SECS); /* cmd, sec, ... */
	txp = &txbuf[5];
	txp[RS5C348_REG_SECS] = FUNC2(tm->tm_sec);
	txp[RS5C348_REG_MINS] = FUNC2(tm->tm_min);
	if (pdata->rtc_24h) {
		txp[RS5C348_REG_HOURS] = FUNC2(tm->tm_hour);
	} else {
		/* hour 0 is AM12, noon is PM12 */
		txp[RS5C348_REG_HOURS] = FUNC2((tm->tm_hour + 11) % 12 + 1) |
			(tm->tm_hour >= 12 ? RS5C348_BIT_PM : 0);
	}
	txp[RS5C348_REG_WDAY] = FUNC2(tm->tm_wday);
	txp[RS5C348_REG_DAY] = FUNC2(tm->tm_mday);
	txp[RS5C348_REG_MONTH] = FUNC2(tm->tm_mon + 1) |
		(tm->tm_year >= 100 ? RS5C348_BIT_Y2K : 0);
	txp[RS5C348_REG_YEAR] = FUNC2(tm->tm_year % 100);
	/* write in one transfer to avoid data inconsistency */
	ret = FUNC3(spi, txbuf, sizeof(txbuf), NULL, 0);
	FUNC5(62);	/* Tcsr 62us */
	return ret;
}