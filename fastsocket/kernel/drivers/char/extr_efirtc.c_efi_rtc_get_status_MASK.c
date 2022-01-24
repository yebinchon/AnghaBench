#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  eft ;
struct TYPE_8__ {int hour; int minute; int second; int nanosecond; int year; int month; int day; int daylight; scalar_t__ timezone; int resolution; int accuracy; int sets_to_zero; } ;
typedef  TYPE_1__ efi_time_t ;
typedef  TYPE_1__ efi_time_cap_t ;
typedef  int efi_bool_t ;
typedef  int /*<<< orphan*/  cap ;
typedef  int /*<<< orphan*/  alm ;
struct TYPE_9__ {int /*<<< orphan*/  (* get_wakeup_time ) (int*,int*,TYPE_1__*) ;int /*<<< orphan*/  (* get_time ) (TYPE_1__*,TYPE_1__*) ;} ;

/* Variables and functions */
 scalar_t__ EFI_UNSPECIFIED_TIMEZONE ; 
 TYPE_7__ efi ; 
 int /*<<< orphan*/  efi_rtc_lock ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(char *buf)
{
	efi_time_t 	eft, alm;
	efi_time_cap_t	cap;
	char		*p = buf;
	efi_bool_t	enabled, pending;	
	unsigned long	flags;

	FUNC0(&eft, 0, sizeof(eft));
	FUNC0(&alm, 0, sizeof(alm));
	FUNC0(&cap, 0, sizeof(cap));

	FUNC1(&efi_rtc_lock, flags);

	efi.get_time(&eft, &cap);
	efi.get_wakeup_time(&enabled, &pending, &alm);

	FUNC2(&efi_rtc_lock,flags);

	p += FUNC3(p,
		     "Time           : %u:%u:%u.%09u\n"
		     "Date           : %u-%u-%u\n"
		     "Daylight       : %u\n",
		     eft.hour, eft.minute, eft.second, eft.nanosecond, 
		     eft.year, eft.month, eft.day,
		     eft.daylight);

	if (eft.timezone == EFI_UNSPECIFIED_TIMEZONE)
		p += FUNC3(p, "Timezone       : unspecified\n");
	else
		/* XXX fixme: convert to string? */
		p += FUNC3(p, "Timezone       : %u\n", eft.timezone);
		

	p += FUNC3(p,
		     "Alarm Time     : %u:%u:%u.%09u\n"
		     "Alarm Date     : %u-%u-%u\n"
		     "Alarm Daylight : %u\n"
		     "Enabled        : %s\n"
		     "Pending        : %s\n",
		     alm.hour, alm.minute, alm.second, alm.nanosecond, 
		     alm.year, alm.month, alm.day, 
		     alm.daylight,
		     enabled == 1 ? "yes" : "no",
		     pending == 1 ? "yes" : "no");

	if (eft.timezone == EFI_UNSPECIFIED_TIMEZONE)
		p += FUNC3(p, "Timezone       : unspecified\n");
	else
		/* XXX fixme: convert to string? */
		p += FUNC3(p, "Timezone       : %u\n", alm.timezone);

	/*
	 * now prints the capabilities
	 */
	p += FUNC3(p,
		     "Resolution     : %u\n"
		     "Accuracy       : %u\n"
		     "SetstoZero     : %u\n",
		      cap.resolution, cap.accuracy, cap.sets_to_zero);

	return  p - buf;
}