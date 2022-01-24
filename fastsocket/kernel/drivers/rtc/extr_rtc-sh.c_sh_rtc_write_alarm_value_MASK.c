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
struct sh_rtc {scalar_t__ regbase; } ;

/* Variables and functions */
 int AR_ENB ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct sh_rtc *rtc,
					    int value, int reg_off)
{
	/* < 0 for a value that is ignored */
	if (value < 0)
		FUNC1(0, rtc->regbase + reg_off);
	else
		FUNC1(FUNC0(value) | AR_ENB,  rtc->regbase + reg_off);
}