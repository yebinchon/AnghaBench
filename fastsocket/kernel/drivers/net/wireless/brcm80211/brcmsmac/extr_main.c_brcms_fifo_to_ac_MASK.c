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
typedef  size_t u8 ;

/* Variables and functions */
 size_t FUNC0 (size_t*) ; 
 size_t IEEE80211_AC_BE ; 
 size_t* fifo_to_ac_mapping ; 

__attribute__((used)) static u8 FUNC1(u8 fifo)
{
	if (fifo >= FUNC0(fifo_to_ac_mapping))
		return IEEE80211_AC_BE;
	return fifo_to_ac_mapping[fifo];
}