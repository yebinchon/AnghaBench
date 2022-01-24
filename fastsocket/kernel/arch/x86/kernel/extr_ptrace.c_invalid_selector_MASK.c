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
typedef  int u16 ;

/* Variables and functions */
 int SEGMENT_RPL_MASK ; 
 int USER_RPL ; 
 int FUNC0 (int) ; 

__attribute__((used)) static inline bool FUNC1(u16 value)
{
	return FUNC0(value != 0 && (value & SEGMENT_RPL_MASK) != USER_RPL);
}