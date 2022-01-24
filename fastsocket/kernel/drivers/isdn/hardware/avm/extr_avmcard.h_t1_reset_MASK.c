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
 int /*<<< orphan*/  B1_INSTAT ; 
 int /*<<< orphan*/  B1_OUTSTAT ; 
 int /*<<< orphan*/  T1_IRQMASTER ; 
 int /*<<< orphan*/  T1_RESETBOARD ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(unsigned int base)
{
        /* reset T1 Controller */
        FUNC0(base);
        /* disable irq on HEMA */
        FUNC1(base, B1_INSTAT, 0x00);
        FUNC1(base, B1_OUTSTAT, 0x00);
        FUNC1(base, T1_IRQMASTER, 0x00);
        /* reset HEMA board configuration */
	FUNC1(base, T1_RESETBOARD, 0xf);
}