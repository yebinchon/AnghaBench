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
 int /*<<< orphan*/  IRQ_LEVEL_LOW ; 
 int /*<<< orphan*/  IRQ_SIGNAL_THROUGH ; 
 int /*<<< orphan*/  IRQ_TRIGGER_LEVEL ; 
 int /*<<< orphan*/  TB0219_PCI_SLOT1_PIN ; 
 int /*<<< orphan*/  TB0219_PCI_SLOT2_PIN ; 
 int /*<<< orphan*/  TB0219_PCI_SLOT3_PIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	/* PCI Slot 1 */
	FUNC1(TB0219_PCI_SLOT1_PIN, IRQ_TRIGGER_LEVEL, IRQ_SIGNAL_THROUGH);
	FUNC0(TB0219_PCI_SLOT1_PIN, IRQ_LEVEL_LOW);

	/* PCI Slot 2 */
	FUNC1(TB0219_PCI_SLOT2_PIN, IRQ_TRIGGER_LEVEL, IRQ_SIGNAL_THROUGH);
	FUNC0(TB0219_PCI_SLOT2_PIN, IRQ_LEVEL_LOW);

	/* PCI Slot 3 */
	FUNC1(TB0219_PCI_SLOT3_PIN, IRQ_TRIGGER_LEVEL, IRQ_SIGNAL_THROUGH);
	FUNC0(TB0219_PCI_SLOT3_PIN, IRQ_LEVEL_LOW);
}