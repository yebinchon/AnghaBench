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
struct sfax_hw {scalar_t__ cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISAC_MASK ; 
 int /*<<< orphan*/  ISAR_IRQBIT ; 
 int /*<<< orphan*/  ISAR_IRQMSK ; 
 int /*<<< orphan*/  SFAX_TIGER_IRQ_BIT ; 
 scalar_t__ TIGER_AUX_IRQMASK ; 
 int /*<<< orphan*/  FUNC0 (struct sfax_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sfax_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct sfax_hw *sf)
{
	FUNC0(sf, ISAC_MASK, 0);
	FUNC1(sf, ISAR_IRQBIT, ISAR_IRQMSK);
	FUNC2(SFAX_TIGER_IRQ_BIT, sf->cfg + TIGER_AUX_IRQMASK);
}