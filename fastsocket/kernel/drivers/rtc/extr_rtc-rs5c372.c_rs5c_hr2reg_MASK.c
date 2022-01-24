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
struct rs5c372 {scalar_t__ time24; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 

__attribute__((used)) static unsigned FUNC1(struct rs5c372 *rs5c, unsigned hour)
{
	if (rs5c->time24)
		return FUNC0(hour);

	if (hour > 12)
		return 0x20 | FUNC0(hour - 12);
	if (hour == 12)
		return 0x20 | FUNC0(12);
	if (hour == 0)
		return FUNC0(12);
	return FUNC0(hour);
}