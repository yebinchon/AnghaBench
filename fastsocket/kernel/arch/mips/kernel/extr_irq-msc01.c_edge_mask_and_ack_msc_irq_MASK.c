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

/* Variables and functions */
 scalar_t__ MSC01_IC_EOI ; 
 scalar_t__ MSC01_IC_SUP ; 
 int MSC01_IC_SUP_EDGE_BIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  cpu_has_veic ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(unsigned int irq)
{
	FUNC2(irq);
	if (!cpu_has_veic)
		FUNC1(MSC01_IC_EOI, 0);
	else {
		u32 r;
		FUNC0(MSC01_IC_SUP+irq*8, r);
		FUNC1(MSC01_IC_SUP+irq*8, r | ~MSC01_IC_SUP_EDGE_BIT);
		FUNC1(MSC01_IC_SUP+irq*8, r);
	}
	FUNC3(irq);
}