#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {long tv_sec; scalar_t__ tv_usec; } ;
struct streamzap_ir {int idle; scalar_t__ sum; TYPE_3__ signal_last; TYPE_3__ signal_start; } ;
struct TYPE_5__ {int pulse; int duration; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int IR_MAX_DURATION ; 
 int SZ_RESOLUTION ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_1__ rawir ; 
 int /*<<< orphan*/  FUNC3 (struct streamzap_ir*,TYPE_1__) ; 

__attribute__((used)) static void FUNC4(struct streamzap_ir *sz,
			       unsigned char value)
{
	FUNC0(rawir);

	if (sz->idle) {
		long deltv;

		sz->signal_last = sz->signal_start;
		FUNC2(&sz->signal_start);

		deltv = sz->signal_start.tv_sec - sz->signal_last.tv_sec;
		rawir.pulse = false;
		if (deltv > 15) {
			/* really long time */
			rawir.duration = IR_MAX_DURATION;
		} else {
			rawir.duration = (int)(deltv * 1000000 +
				sz->signal_start.tv_usec -
				sz->signal_last.tv_usec);
			rawir.duration -= sz->sum;
			rawir.duration = FUNC1(rawir.duration);
			rawir.duration &= IR_MAX_DURATION;
		}
		FUNC3(sz, rawir);

		sz->idle = false;
		sz->sum = 0;
	}

	rawir.pulse = true;
	rawir.duration = ((int) value) * SZ_RESOLUTION;
	rawir.duration += SZ_RESOLUTION / 2;
	sz->sum += rawir.duration;
	rawir.duration = FUNC1(rawir.duration);
	rawir.duration &= IR_MAX_DURATION;
	FUNC3(sz, rawir);
}