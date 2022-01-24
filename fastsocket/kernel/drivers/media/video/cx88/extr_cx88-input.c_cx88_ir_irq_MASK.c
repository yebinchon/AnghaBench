#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ir_raw_event {int pulse; unsigned int duration; } ;
struct cx88_core {struct cx88_IR* ir; } ;
struct cx88_IR {TYPE_1__* dev; int /*<<< orphan*/  sampling; } ;
struct TYPE_3__ {scalar_t__ idle; } ;

/* Variables and functions */
 int /*<<< orphan*/  MO_SAMPLE_IO ; 
 unsigned int NSEC_PER_SEC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ir_raw_event*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct ir_raw_event*) ; 
 int ir_samplerate ; 
 unsigned int FUNC5 (unsigned int,scalar_t__) ; 

void FUNC6(struct cx88_core *core)
{
	struct cx88_IR *ir = core->ir;
	u32 samples;
	unsigned todo, bits;
	struct ir_raw_event ev;

	if (!ir || !ir->sampling)
		return;

	/*
	 * Samples are stored in a 32 bit register, oldest sample in
	 * the msb. A set bit represents space and an unset bit
	 * represents a pulse.
	 */
	samples = FUNC0(MO_SAMPLE_IO);

	if (samples == 0xff && ir->dev->idle)
		return;

	FUNC2(&ev);
	for (todo = 32; todo > 0; todo -= bits) {
		ev.pulse = samples & 0x80000000 ? false : true;
		bits = FUNC5(todo, 32U - FUNC1(ev.pulse ? samples : ~samples));
		ev.duration = (bits * NSEC_PER_SEC) / (1000 * ir_samplerate);
		FUNC4(ir->dev, &ev);
		samples <<= bits;
	}
	FUNC3(ir->dev);
}