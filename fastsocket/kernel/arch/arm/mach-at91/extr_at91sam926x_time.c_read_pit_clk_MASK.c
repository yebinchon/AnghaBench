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
typedef  int u32 ;
struct clocksource {int dummy; } ;
typedef  int cycle_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_PIT_PIIR ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int pit_cnt ; 
 int pit_cycle ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

__attribute__((used)) static cycle_t FUNC5(struct clocksource *cs)
{
	unsigned long flags;
	u32 elapsed;
	u32 t;

	FUNC4(flags);
	elapsed = pit_cnt;
	t = FUNC2(AT91_PIT_PIIR);
	FUNC3(flags);

	elapsed += FUNC1(t) * pit_cycle;
	elapsed += FUNC0(t);
	return elapsed;
}