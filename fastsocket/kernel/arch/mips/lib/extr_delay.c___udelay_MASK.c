#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int udelay_val; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 TYPE_1__ current_cpu_data ; 

void FUNC1(unsigned long us)
{
	unsigned int lpj = current_cpu_data.udelay_val;

	FUNC0((us * 0x000010c7ull * HZ * lpj) >> 32);
}