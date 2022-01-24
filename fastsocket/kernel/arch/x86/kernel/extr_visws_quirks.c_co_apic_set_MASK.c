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
 int CO_APIC_LEVEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FIRST_EXTERNAL_VECTOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(int entry, int irq)
{
	FUNC2(FUNC1(entry), CO_APIC_LEVEL | (irq + FIRST_EXTERNAL_VECTOR));
	FUNC2(FUNC0(entry), 0);
}