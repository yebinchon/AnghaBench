#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char u16 ;
struct TYPE_4__ {unsigned char old_signals; unsigned char serial_signals; int /*<<< orphan*/  status_timer; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ SLMP_INFO ;

/* Variables and functions */
 unsigned char MISCSTATUS_CTS_LATCHED ; 
 unsigned char MISCSTATUS_DCD_LATCHED ; 
 unsigned char MISCSTATUS_DSR_LATCHED ; 
 unsigned char MISCSTATUS_RI_LATCHED ; 
 unsigned char SerialSignal_CTS ; 
 unsigned char SerialSignal_DCD ; 
 unsigned char SerialSignal_DSR ; 
 unsigned char SerialSignal_RI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(unsigned long context)
{
	u16 status = 0;
	SLMP_INFO *info = (SLMP_INFO*)context;
	unsigned long flags;
	unsigned char delta;


	FUNC4(&info->lock,flags);
	FUNC0(info);
	FUNC5(&info->lock,flags);

	/* check for DSR/RI state change */

	delta = info->old_signals ^ info->serial_signals;
	info->old_signals = info->serial_signals;

	if (delta & SerialSignal_DSR)
		status |= MISCSTATUS_DSR_LATCHED|(info->serial_signals&SerialSignal_DSR);

	if (delta & SerialSignal_RI)
		status |= MISCSTATUS_RI_LATCHED|(info->serial_signals&SerialSignal_RI);

	if (delta & SerialSignal_DCD)
		status |= MISCSTATUS_DCD_LATCHED|(info->serial_signals&SerialSignal_DCD);

	if (delta & SerialSignal_CTS)
		status |= MISCSTATUS_CTS_LATCHED|(info->serial_signals&SerialSignal_CTS);

	if (status)
		FUNC1(info,status);

	FUNC2(&info->status_timer, jiffies + FUNC3(10));
}