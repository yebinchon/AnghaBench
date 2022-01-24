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
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 scalar_t__ ESR_BASE ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(unsigned int irq)
{
	__u32 esr = ESR_BASE + (FUNC1(irq) << 2);
	FUNC2(irq);
	FUNC3((1 << FUNC0(irq)), esr);
}