#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_8__ {int istat; } ;
struct TYPE_5__ {unsigned long istat; } ;
struct TYPE_6__ {TYPE_1__ ctrl; } ;
struct TYPE_7__ {TYPE_2__ perif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CRIME_MACEISA_INT_MASK ; 
 int CRIME_VICE_IRQ ; 
 int MACEISA_AUDIO_SW_IRQ ; 
 int MACEISA_SERIAL2_RDMAOR_IRQ ; 
 int MACE_VID_IN1_IRQ ; 
 int FUNC1 (unsigned long) ; 
 TYPE_4__* crime ; 
 int crime_mask ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_3__* mace ; 
 unsigned long maceisa_mask ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void)
{
	uint64_t crime_int;
	int irq = 0;

	/*
	 * Sanity check interrupt numbering enum.
	 * MACE got 32 interrupts and there are 32 MACE ISA interrupts daisy
	 * chained.
	 */
	FUNC0(CRIME_VICE_IRQ - MACE_VID_IN1_IRQ != 31);
	FUNC0(MACEISA_SERIAL2_RDMAOR_IRQ - MACEISA_AUDIO_SW_IRQ != 31);

	crime_int = crime->istat & crime_mask;

	/* crime sometime delivers spurious interrupts, ignore them */
	if (FUNC4(crime_int == 0))
		return;

	irq = MACE_VID_IN1_IRQ + FUNC1(crime_int);

	if (crime_int & CRIME_MACEISA_INT_MASK) {
		unsigned long mace_int = mace->perif.ctrl.istat;
		irq = FUNC1(mace_int & maceisa_mask) + MACEISA_AUDIO_SW_IRQ;
	}

	FUNC3("*irq %u*\n", irq);
	FUNC2(irq);
}