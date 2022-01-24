#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * dpram; scalar_t__ iobase; int /*<<< orphan*/  irq; } ;
typedef  TYPE_1__ hysdn_card ;

/* Variables and functions */
 scalar_t__ PCI9050_INTR_REG ; 
 scalar_t__ PCI9050_USER_IO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC4(hysdn_card * card)
{
	FUNC0(card);	/* first stop the card if not already done */
	FUNC1(card->irq, card);	/* release interrupt */
	FUNC3(card->iobase + PCI9050_INTR_REG, 1);	/* release all io ports */
	FUNC3(card->iobase + PCI9050_USER_IO, 1);
	FUNC2(card->dpram);
	card->dpram = NULL;	/* release shared mem */
}