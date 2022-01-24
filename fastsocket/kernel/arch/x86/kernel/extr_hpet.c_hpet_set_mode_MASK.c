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
typedef  int uint64_t ;
struct hpet_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  cpu; } ;
struct clock_event_device {int mult; int shift; } ;
typedef  enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;

/* Variables and functions */
#define  CLOCK_EVT_MODE_ONESHOT 132 
#define  CLOCK_EVT_MODE_PERIODIC 131 
#define  CLOCK_EVT_MODE_RESUME 130 
#define  CLOCK_EVT_MODE_SHUTDOWN 129 
#define  CLOCK_EVT_MODE_UNUSED 128 
 struct hpet_dev* FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  HPET_COUNTER ; 
 unsigned long HPET_TN_32BIT ; 
 unsigned long HPET_TN_ENABLE ; 
 unsigned long HPET_TN_LEVEL ; 
 unsigned long HPET_TN_PERIODIC ; 
 unsigned long HPET_TN_SETVAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int HZ ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(enum clock_event_mode mode,
			  struct clock_event_device *evt, int timer)
{
	unsigned long cfg, cmp, now;
	uint64_t delta;

	switch (mode) {
	case CLOCK_EVT_MODE_PERIODIC:
		FUNC11();
		delta = ((uint64_t)(NSEC_PER_SEC/HZ)) * evt->mult;
		delta >>= evt->shift;
		now = FUNC8(HPET_COUNTER);
		cmp = now + (unsigned long) delta;
		cfg = FUNC8(FUNC1(timer));
		/* Make sure we use edge triggered interrupts */
		cfg &= ~HPET_TN_LEVEL;
		cfg |= HPET_TN_ENABLE | HPET_TN_PERIODIC |
		       HPET_TN_SETVAL | HPET_TN_32BIT;
		FUNC12(cfg, FUNC1(timer));
		FUNC12(cmp, FUNC2(timer));
		FUNC14(1);
		/*
		 * HPET on AMD 81xx needs a second write (with HPET_TN_SETVAL
		 * cleared) to T0_CMP to set the period. The HPET_TN_SETVAL
		 * bit is automatically cleared after the first write.
		 * (See AMD-8111 HyperTransport I/O Hub Data Sheet,
		 * Publication # 24674)
		 */
		FUNC12((unsigned long) delta, FUNC2(timer));
		FUNC10();
		FUNC7();
		break;

	case CLOCK_EVT_MODE_ONESHOT:
		cfg = FUNC8(FUNC1(timer));
		cfg &= ~HPET_TN_PERIODIC;
		cfg |= HPET_TN_ENABLE | HPET_TN_32BIT;
		FUNC12(cfg, FUNC1(timer));
		break;

	case CLOCK_EVT_MODE_UNUSED:
	case CLOCK_EVT_MODE_SHUTDOWN:
		cfg = FUNC8(FUNC1(timer));
		cfg &= ~HPET_TN_ENABLE;
		FUNC12(cfg, FUNC1(timer));
		break;

	case CLOCK_EVT_MODE_RESUME:
		if (timer == 0) {
			FUNC6();
		} else {
			struct hpet_dev *hdev = FUNC0(evt);
			FUNC9(hdev->irq);
			FUNC4(hdev->irq);
			FUNC13(hdev->irq, FUNC3(hdev->cpu));
			FUNC5(hdev->irq);
		}
		FUNC7();
		break;
	}
}