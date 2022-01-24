#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_2__ {int tv_sec; int tv_usec; } ;
struct card_ir {int last_bit; int code; int shift_by; scalar_t__ start; scalar_t__ addr; int last_rc5; int /*<<< orphan*/  timer_keyup; int /*<<< orphan*/  rc5_key_timeout; int /*<<< orphan*/  ir; int /*<<< orphan*/  dev; scalar_t__ active; TYPE_1__ base_time; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(unsigned long data)
{
	struct card_ir *ir = (struct card_ir *)data;
	struct timeval tv;
	unsigned long current_jiffies, timeout;
	u32 gap;
	u32 rc5 = 0;

	/* get time */
	current_jiffies = jiffies;
	FUNC4(&tv);

	/* avoid overflow with gap >1s */
	if (tv.tv_sec - ir->base_time.tv_sec > 1) {
		gap = 200000;
	} else {
		gap = 1000000 * (tv.tv_sec - ir->base_time.tv_sec) +
		    tv.tv_usec - ir->base_time.tv_usec;
	}

	/* signal we're ready to start a new code */
	ir->active = 0;

	/* Allow some timer jitter (RC5 is ~24ms anyway so this is ok) */
	if (gap < 28000) {
		FUNC5(1, "ir-common: spurious timer_end\n");
		return;
	}

	if (ir->last_bit < 20) {
		/* ignore spurious codes (caused by light/other remotes) */
		FUNC5(1, "ir-common: short code: %x\n", ir->code);
	} else {
		ir->code = (ir->code << ir->shift_by) | 1;
		rc5 = FUNC8(ir->code);

		/* two start bits? */
		if (FUNC2(rc5) != ir->start) {
			FUNC5(1, "ir-common: rc5 start bits invalid: %u\n", FUNC2(rc5));

			/* right address? */
		} else if (FUNC0(rc5) == ir->addr) {
			u32 toggle = FUNC3(rc5);
			u32 instr = FUNC1(rc5);

			/* Good code, decide if repeat/repress */
			if (toggle != FUNC3(ir->last_rc5) ||
			    instr != FUNC1(ir->last_rc5)) {
				FUNC5(1, "ir-common: instruction %x, toggle %x\n", instr,
					toggle);
				FUNC7(ir->dev, &ir->ir);
				FUNC6(ir->dev, &ir->ir, instr,
						 instr);
			}

			/* Set/reset key-up timer */
			timeout = current_jiffies +
				  FUNC10(ir->rc5_key_timeout);
			FUNC9(&ir->timer_keyup, timeout);

			/* Save code for repeat test */
			ir->last_rc5 = rc5;
		}
	}
}