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
struct TYPE_5__ {scalar_t__ mbase; } ;
typedef  TYPE_1__ avmcard ;

/* Variables and functions */
 int CAS_OFFSET ; 
 int CHAN_1_CONTROL ; 
 int CHAN_2_CONTROL ; 
 int DBELL_ADDR ; 
 int DBELL_PCI_MASK ; 
 int DBELL_RESET_ARM ; 
 int DBELL_SA_MASK ; 
 int DC21285_ARMCSR_BASE ; 
 int DC21285_DRAM_A0MR ; 
 int DC21285_DRAM_A1MR ; 
 int DC21285_DRAM_A2MR ; 
 int DC21285_DRAM_A3MR ; 
 scalar_t__ DOORBELL ; 
 int DRAM_ADDR_SIZE_0 ; 
 int DRAM_ADDR_SIZE_1 ; 
 int DRAM_ADDR_SIZE_2 ; 
 int DRAM_ADDR_SIZE_3 ; 
 int DRAM_AD_SZ_DEF0 ; 
 int DRAM_AD_SZ_NULL ; 
 int DRAM_TIMING ; 
 int DRAM_TIMING_DEF ; 
 int HZ ; 
 int INIT_XBUS_CYCLE ; 
 int INIT_XBUS_STROBE ; 
 scalar_t__ MAILBOX_0 ; 
 scalar_t__ PCI_OUT_INT_MASK ; 
 int SA_CONTROL ; 
 int SA_CTL_ALLRIGHT ; 
 int XBUS_CYCLE ; 
 int XBUS_STROBE ; 
 scalar_t__ FUNC0 (TYPE_1__*,int,unsigned long*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,unsigned long) ; 

__attribute__((used)) static int FUNC7(avmcard *card)
{
	unsigned long stop, dummy;

	FUNC3(card->mbase+PCI_OUT_INT_MASK, 0x0c);
	if (FUNC2(card->mbase+PCI_OUT_INT_MASK) != 0x0c)
		return	1;

	FUNC3(card->mbase+DOORBELL, DBELL_RESET_ARM);

	stop = jiffies + HZ*10;
	while (FUNC2(card->mbase+DOORBELL) != 0xffffffff) {
		if (!FUNC6(jiffies, stop))
			return 2;
		FUNC3(card->mbase+DOORBELL, DBELL_ADDR);
		FUNC4();
	}

	FUNC1(card, DC21285_ARMCSR_BASE + CHAN_1_CONTROL, 0);
	FUNC1(card, DC21285_ARMCSR_BASE + CHAN_2_CONTROL, 0);

	FUNC3(card->mbase+MAILBOX_0, 0x55aa55aa);
	if (FUNC2(card->mbase+MAILBOX_0) != 0x55aa55aa) return 3;

	FUNC3(card->mbase+MAILBOX_0, 0xaa55aa55);
	if (FUNC2(card->mbase+MAILBOX_0) != 0xaa55aa55) return 4;

	if (FUNC1(card, DC21285_ARMCSR_BASE+DBELL_SA_MASK, 0)) return 5;
	if (FUNC1(card, DC21285_ARMCSR_BASE+DBELL_PCI_MASK, 0)) return 6;
	if (FUNC1(card, DC21285_ARMCSR_BASE+SA_CONTROL, SA_CTL_ALLRIGHT))
		return 7;
	if (FUNC1(card, DC21285_ARMCSR_BASE+XBUS_CYCLE, INIT_XBUS_CYCLE))
		return 8;
	if (FUNC1(card, DC21285_ARMCSR_BASE+XBUS_STROBE, INIT_XBUS_STROBE))
		return 8;
	if (FUNC1(card, DC21285_ARMCSR_BASE+DRAM_TIMING, 0)) return 9;

        FUNC5(1);

	if (FUNC0(card, DC21285_DRAM_A0MR, &dummy)) return 10;
	if (FUNC0(card, DC21285_DRAM_A1MR, &dummy)) return 11;
	if (FUNC0(card, DC21285_DRAM_A2MR, &dummy)) return 12;
	if (FUNC0(card, DC21285_DRAM_A3MR, &dummy)) return 13;

	if (FUNC1(card, DC21285_DRAM_A0MR+CAS_OFFSET, 0)) return 14;
	if (FUNC1(card, DC21285_DRAM_A1MR+CAS_OFFSET, 0)) return 15;
	if (FUNC1(card, DC21285_DRAM_A2MR+CAS_OFFSET, 0)) return 16;
	if (FUNC1(card, DC21285_DRAM_A3MR+CAS_OFFSET, 0)) return 17;

        FUNC5(1);

	if (FUNC1(card, DC21285_ARMCSR_BASE+DRAM_TIMING, DRAM_TIMING_DEF))
		return 18;

	if (FUNC1(card, DC21285_ARMCSR_BASE+DRAM_ADDR_SIZE_0,DRAM_AD_SZ_DEF0))
		return 19;
	if (FUNC1(card, DC21285_ARMCSR_BASE+DRAM_ADDR_SIZE_1,DRAM_AD_SZ_NULL))
		return 20;
	if (FUNC1(card, DC21285_ARMCSR_BASE+DRAM_ADDR_SIZE_2,DRAM_AD_SZ_NULL))
		return 21;
	if (FUNC1(card, DC21285_ARMCSR_BASE+DRAM_ADDR_SIZE_3,DRAM_AD_SZ_NULL))
		return 22;

	/* Transputer test */
	
	if (   FUNC1(card, 0x000000, 0x11111111)
	    || FUNC1(card, 0x400000, 0x22222222)
	    || FUNC1(card, 0x800000, 0x33333333)
	    || FUNC1(card, 0xC00000, 0x44444444))
		return 23;

	if (   FUNC0(card, 0x000000, &dummy) || dummy != 0x11111111
	    || FUNC0(card, 0x400000, &dummy) || dummy != 0x22222222
	    || FUNC0(card, 0x800000, &dummy) || dummy != 0x33333333
	    || FUNC0(card, 0xC00000, &dummy) || dummy != 0x44444444)
		return 24;

	if (   FUNC1(card, 0x000000, 0x55555555)
	    || FUNC1(card, 0x400000, 0x66666666)
	    || FUNC1(card, 0x800000, 0x77777777)
	    || FUNC1(card, 0xC00000, 0x88888888))
		return 25;

	if (   FUNC0(card, 0x000000, &dummy) || dummy != 0x55555555
	    || FUNC0(card, 0x400000, &dummy) || dummy != 0x66666666
	    || FUNC0(card, 0x800000, &dummy) || dummy != 0x77777777
	    || FUNC0(card, 0xC00000, &dummy) || dummy != 0x88888888)
		return 26;

	return 0;
}