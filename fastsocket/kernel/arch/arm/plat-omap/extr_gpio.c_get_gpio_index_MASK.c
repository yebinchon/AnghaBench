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

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static inline int FUNC4(int gpio)
{
	if (FUNC3())
		return gpio & 0x1f;
	if (FUNC0())
		return gpio & 0x1f;
	if (FUNC1() || FUNC2())
		return gpio & 0x1f;
	return gpio & 0x0f;
}