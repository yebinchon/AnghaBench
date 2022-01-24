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
struct asic3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ASIC3_GPIO_MASK ; 
 int FUNC0 (struct asic3*,unsigned int) ; 
 int FUNC1 (struct asic3*,unsigned int) ; 
 int FUNC2 (struct asic3*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct asic3*,int,int) ; 
 struct asic3* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(unsigned int irq)
{
	struct asic3 *asic = FUNC4(irq);
	u32 val, bank, index;
	unsigned long flags;

	bank = FUNC0(asic, irq);
	index = FUNC1(asic, irq);

	FUNC5(&asic->lock, flags);
	val = FUNC2(asic, bank + ASIC3_GPIO_MASK);
	val &= ~(1 << index);
	FUNC3(asic, bank + ASIC3_GPIO_MASK, val);
	FUNC6(&asic->lock, flags);
}