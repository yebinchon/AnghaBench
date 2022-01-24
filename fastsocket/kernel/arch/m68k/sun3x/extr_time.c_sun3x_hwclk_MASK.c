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
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_wday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct mostek_dt {int /*<<< orphan*/  csr; void* year; void* month; void* mday; void* wday; void* hour; void* min; void* sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_READ ; 
 int /*<<< orphan*/  C_WRITE ; 
 scalar_t__ M_CONTROL ; 
 scalar_t__ SUN3X_EEPROM ; 
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

int FUNC4(int set, struct rtc_time *t)
{
	volatile struct mostek_dt *h =
		(struct mostek_dt *)(SUN3X_EEPROM+M_CONTROL);
	unsigned long flags;

	FUNC3(flags);

	if(set) {
		h->csr |= C_WRITE;
		h->sec = FUNC1(t->tm_sec);
		h->min = FUNC1(t->tm_min);
		h->hour = FUNC1(t->tm_hour);
		h->wday = FUNC1(t->tm_wday);
		h->mday = FUNC1(t->tm_mday);
		h->month = FUNC1(t->tm_mon);
		h->year = FUNC1(t->tm_year);
		h->csr &= ~C_WRITE;
	} else {
		h->csr |= C_READ;
		t->tm_sec = FUNC0(h->sec);
		t->tm_min = FUNC0(h->min);
		t->tm_hour = FUNC0(h->hour);
		t->tm_wday = FUNC0(h->wday);
		t->tm_mday = FUNC0(h->mday);
		t->tm_mon = FUNC0(h->month);
		t->tm_year = FUNC0(h->year);
		h->csr &= ~C_READ;
	}

	FUNC2(flags);

	return 0;
}