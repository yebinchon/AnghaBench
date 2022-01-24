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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 int /*<<< orphan*/  HPET_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(u64 deltatsc, u64 hpet1, u64 hpet2)
{
	u64 tmp;

	if (hpet2 < hpet1)
		hpet2 += 0x100000000ULL;
	hpet2 -= hpet1;
	tmp = ((u64)hpet2 * FUNC1(HPET_PERIOD));
	FUNC0(tmp, 1000000);
	FUNC0(deltatsc, tmp);

	return (unsigned long) deltatsc;
}