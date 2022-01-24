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
struct clock_event_device {int dummy; } ;
typedef  enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;

/* Variables and functions */
#define  CLOCK_EVT_MODE_ONESHOT 132 
#define  CLOCK_EVT_MODE_PERIODIC 131 
#define  CLOCK_EVT_MODE_RESUME 130 
#define  CLOCK_EVT_MODE_SHUTDOWN 129 
#define  CLOCK_EVT_MODE_UNUSED 128 
 int TICKS_PER_JIFFY ; 
 scalar_t__ U300_TIMER_APP_DGPT1 ; 
 int U300_TIMER_APP_DGPT1_TIMER_DISABLE ; 
 scalar_t__ U300_TIMER_APP_EGPT1 ; 
 int U300_TIMER_APP_EGPT1_TIMER_ENABLE ; 
 scalar_t__ U300_TIMER_APP_GPT1IE ; 
 int U300_TIMER_APP_GPT1IE_IRQ_DISABLE ; 
 int U300_TIMER_APP_GPT1IE_IRQ_ENABLE ; 
 scalar_t__ U300_TIMER_APP_GPT1TC ; 
 scalar_t__ U300_TIMER_APP_SGPT1M ; 
 int U300_TIMER_APP_SGPT1M_MODE_CONTINUOUS ; 
 int U300_TIMER_APP_SGPT1M_MODE_ONE_SHOT ; 
 scalar_t__ U300_TIMER_APP_VBASE ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(enum clock_event_mode mode,
			  struct clock_event_device *evt)
{
	switch (mode) {
	case CLOCK_EVT_MODE_PERIODIC:
		/* Disable interrupts on GPT1 */
		FUNC0(U300_TIMER_APP_GPT1IE_IRQ_DISABLE,
		       U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1IE);
		/* Disable GP1 while we're reprogramming it. */
		FUNC0(U300_TIMER_APP_DGPT1_TIMER_DISABLE,
		       U300_TIMER_APP_VBASE + U300_TIMER_APP_DGPT1);
		/*
		 * Set the periodic mode to a certain number of ticks per
		 * jiffy.
		 */
		FUNC0(TICKS_PER_JIFFY,
		       U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1TC);
		/*
		 * Set continuous mode, so the timer keeps triggering
		 * interrupts.
		 */
		FUNC0(U300_TIMER_APP_SGPT1M_MODE_CONTINUOUS,
		       U300_TIMER_APP_VBASE + U300_TIMER_APP_SGPT1M);
		/* Enable timer interrupts */
		FUNC0(U300_TIMER_APP_GPT1IE_IRQ_ENABLE,
		       U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1IE);
		/* Then enable the OS timer again */
		FUNC0(U300_TIMER_APP_EGPT1_TIMER_ENABLE,
		       U300_TIMER_APP_VBASE + U300_TIMER_APP_EGPT1);
		break;
	case CLOCK_EVT_MODE_ONESHOT:
		/* Just break; here? */
		/*
		 * The actual event will be programmed by the next event hook,
		 * so we just set a dummy value somewhere at the end of the
		 * universe here.
		 */
		/* Disable interrupts on GPT1 */
		FUNC0(U300_TIMER_APP_GPT1IE_IRQ_DISABLE,
		       U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1IE);
		/* Disable GP1 while we're reprogramming it. */
		FUNC0(U300_TIMER_APP_DGPT1_TIMER_DISABLE,
		       U300_TIMER_APP_VBASE + U300_TIMER_APP_DGPT1);
		/*
		 * Expire far in the future, u300_set_next_event() will be
		 * called soon...
		 */
		FUNC0(0xFFFFFFFF, U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1TC);
		/* We run one shot per tick here! */
		FUNC0(U300_TIMER_APP_SGPT1M_MODE_ONE_SHOT,
		       U300_TIMER_APP_VBASE + U300_TIMER_APP_SGPT1M);
		/* Enable interrupts for this timer */
		FUNC0(U300_TIMER_APP_GPT1IE_IRQ_ENABLE,
		       U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1IE);
		/* Enable timer */
		FUNC0(U300_TIMER_APP_EGPT1_TIMER_ENABLE,
		       U300_TIMER_APP_VBASE + U300_TIMER_APP_EGPT1);
		break;
	case CLOCK_EVT_MODE_UNUSED:
	case CLOCK_EVT_MODE_SHUTDOWN:
		/* Disable interrupts on GP1 */
		FUNC0(U300_TIMER_APP_GPT1IE_IRQ_DISABLE,
		       U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1IE);
		/* Disable GP1 */
		FUNC0(U300_TIMER_APP_DGPT1_TIMER_DISABLE,
		       U300_TIMER_APP_VBASE + U300_TIMER_APP_DGPT1);
		break;
	case CLOCK_EVT_MODE_RESUME:
		/* Ignore this call */
		break;
	}
}