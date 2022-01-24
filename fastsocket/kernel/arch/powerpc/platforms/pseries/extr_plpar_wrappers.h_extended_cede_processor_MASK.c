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
typedef  unsigned long u8 ;

/* Variables and functions */
 long FUNC0 () ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static inline long FUNC3(unsigned long latency_hint)
{
	long rc;
	u8 old_latency_hint = FUNC1();

	FUNC2(latency_hint);
	rc = FUNC0();
	FUNC2(old_latency_hint);

	return rc;
}