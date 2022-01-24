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
typedef  int __u32 ;

/* Variables and functions */
 int EMR_BASE ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static inline void FUNC4(unsigned int irq)
{
	__u32 emr = EMR_BASE + (FUNC1(irq) << 4) + (FUNC1(irq) << 2);
	__u32 mask;

	mask = FUNC2(emr);
	mask |= (1 << FUNC0(irq));
	FUNC3(mask, emr);
}