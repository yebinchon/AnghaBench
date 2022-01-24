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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int ni_m_series_max_rtsi_channel ; 

__attribute__((used)) static inline unsigned FUNC1(unsigned n)
{
	FUNC0(n > ni_m_series_max_rtsi_channel);
	if (n == 7)
		return 0x1b;
	return 0xb + n;
}