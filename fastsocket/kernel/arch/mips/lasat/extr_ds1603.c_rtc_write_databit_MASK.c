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
struct TYPE_2__ {unsigned long data; scalar_t__ huge_delay; scalar_t__ data_reversed; } ;

/* Variables and functions */
 TYPE_1__* ds1603 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned int bit)
{
	unsigned long data = FUNC2();
	if (ds1603->data_reversed)
		bit = !bit;
	if (bit)
		data |= ds1603->data;
	else
		data &= ~ds1603->data;

	FUNC3(data);
	FUNC0(50 + ds1603->huge_delay);
	FUNC1(data);
}