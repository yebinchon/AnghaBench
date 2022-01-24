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
typedef  int /*<<< orphan*/  u8 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_wday; int tm_year; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 size_t MAX6900_REG_CENTURY ; 
 size_t MAX6900_REG_CT ; 
 int /*<<< orphan*/  MAX6900_REG_CT_WP ; 
 size_t MAX6900_REG_DT ; 
 size_t MAX6900_REG_DW ; 
 size_t MAX6900_REG_HR ; 
 int MAX6900_REG_LEN ; 
 size_t MAX6900_REG_MN ; 
 size_t MAX6900_REG_MO ; 
 size_t MAX6900_REG_SC ; 
 size_t MAX6900_REG_YR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct i2c_client *client, struct rtc_time const *tm)
{
	u8 regs[MAX6900_REG_LEN];
	int rc;

	rc = FUNC1(client);
	if (rc < 0)
		return rc;

	regs[MAX6900_REG_SC] = FUNC0(tm->tm_sec);
	regs[MAX6900_REG_MN] = FUNC0(tm->tm_min);
	regs[MAX6900_REG_HR] = FUNC0(tm->tm_hour);
	regs[MAX6900_REG_DT] = FUNC0(tm->tm_mday);
	regs[MAX6900_REG_MO] = FUNC0(tm->tm_mon + 1);
	regs[MAX6900_REG_DW] = FUNC0(tm->tm_wday);
	regs[MAX6900_REG_YR] = FUNC0(tm->tm_year % 100);
	regs[MAX6900_REG_CENTURY] = FUNC0((tm->tm_year + 1900) / 100);
	/* set write protect */
	regs[MAX6900_REG_CT] = MAX6900_REG_CT_WP;

	rc = FUNC2(client, regs);
	if (rc < 0)
		return rc;

	return 0;
}