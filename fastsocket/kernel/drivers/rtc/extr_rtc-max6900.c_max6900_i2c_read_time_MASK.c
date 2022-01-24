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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 size_t MAX6900_REG_CENTURY ; 
 size_t MAX6900_REG_DT ; 
 size_t MAX6900_REG_DW ; 
 size_t MAX6900_REG_HR ; 
 int MAX6900_REG_LEN ; 
 size_t MAX6900_REG_MN ; 
 size_t MAX6900_REG_MO ; 
 size_t MAX6900_REG_SC ; 
 size_t MAX6900_REG_YR ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct i2c_client*,int*) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client, struct rtc_time *tm)
{
	int rc;
	u8 regs[MAX6900_REG_LEN];

	rc = FUNC1(client, regs);
	if (rc < 0)
		return rc;

	tm->tm_sec = FUNC0(regs[MAX6900_REG_SC]);
	tm->tm_min = FUNC0(regs[MAX6900_REG_MN]);
	tm->tm_hour = FUNC0(regs[MAX6900_REG_HR] & 0x3f);
	tm->tm_mday = FUNC0(regs[MAX6900_REG_DT]);
	tm->tm_mon = FUNC0(regs[MAX6900_REG_MO]) - 1;
	tm->tm_year = FUNC0(regs[MAX6900_REG_YR]) +
		      FUNC0(regs[MAX6900_REG_CENTURY]) * 100 - 1900;
	tm->tm_wday = FUNC0(regs[MAX6900_REG_DW]);

	return 0;
}