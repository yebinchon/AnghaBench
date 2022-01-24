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
struct locomo {scalar_t__ irq; int /*<<< orphan*/  base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ NO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct locomo*) ; 
 int /*<<< orphan*/  locomo_remove_child ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct locomo *lchip)
{
	FUNC0(lchip->dev, NULL, locomo_remove_child);

	if (lchip->irq != NO_IRQ) {
		FUNC3(lchip->irq, NULL);
		FUNC4(lchip->irq, NULL);
	}

	FUNC1(lchip->base);
	FUNC2(lchip);
}