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
struct pd_dvb_adapter {long last_jiffies; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long) ; 
 long jiffies ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pd_dvb_adapter *adapter)
{
	long nl = jiffies - adapter->last_jiffies;
	unsigned int msec ;

	msec = FUNC1(FUNC0(nl));
	return msec > 800 ? true : false;
}