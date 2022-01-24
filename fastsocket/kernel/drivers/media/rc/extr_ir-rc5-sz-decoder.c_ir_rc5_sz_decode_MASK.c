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
typedef  int u8 ;
typedef  int u32 ;
struct rc_dev {TYPE_1__* raw; } ;
struct rc5_sz_dec {int state; int count; int wanted_bits; int bits; } ;
struct ir_raw_event {int /*<<< orphan*/  pulse; int /*<<< orphan*/  duration; scalar_t__ reset; } ;
struct TYPE_2__ {int enabled_protocols; int /*<<< orphan*/  prev_ev; struct rc5_sz_dec rc5_sz; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int,...) ; 
 int /*<<< orphan*/  RC5_BIT_END ; 
 int /*<<< orphan*/  RC5_BIT_START ; 
 int RC5_SZ_NBITS ; 
 int RC5_UNIT ; 
 int RC_TYPE_RC5_SZ ; 
#define  STATE_BIT_END 131 
#define  STATE_BIT_START 130 
#define  STATE_FINISHED 129 
#define  STATE_INACTIVE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ir_raw_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ir_raw_event) ; 
 int /*<<< orphan*/  FUNC7 (struct ir_raw_event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rc_dev*,int,int) ; 

__attribute__((used)) static int FUNC9(struct rc_dev *dev, struct ir_raw_event ev)
{
	struct rc5_sz_dec *data = &dev->raw->rc5_sz;
	u8 toggle, command, system;
	u32 scancode;

        if (!(dev->raw->enabled_protocols & RC_TYPE_RC5_SZ))
                return 0;

	if (!FUNC6(ev)) {
		if (ev.reset)
			data->state = STATE_INACTIVE;
		return 0;
	}

	if (!FUNC5(ev.duration, RC5_UNIT, RC5_UNIT / 2))
		goto out;

again:
	FUNC0(2, "RC5-sz decode started at state %i (%uus %s)\n",
		   data->state, FUNC2(ev.duration), FUNC1(ev.pulse));

	if (!FUNC5(ev.duration, RC5_UNIT, RC5_UNIT / 2))
		return 0;

	switch (data->state) {

	case STATE_INACTIVE:
		if (!ev.pulse)
			break;

		data->state = STATE_BIT_START;
		data->count = 1;
		data->wanted_bits = RC5_SZ_NBITS;
		FUNC3(&ev, RC5_BIT_START);
		goto again;

	case STATE_BIT_START:
		if (!FUNC4(ev.duration, RC5_BIT_START, RC5_UNIT / 2))
			break;

		data->bits <<= 1;
		if (!ev.pulse)
			data->bits |= 1;
		data->count++;
		data->state = STATE_BIT_END;
		return 0;

	case STATE_BIT_END:
		if (!FUNC7(&ev, &dev->raw->prev_ev))
			break;

		if (data->count == data->wanted_bits)
			data->state = STATE_FINISHED;
		else
			data->state = STATE_BIT_START;

		FUNC3(&ev, RC5_BIT_END);
		goto again;

	case STATE_FINISHED:
		if (ev.pulse)
			break;

		/* RC5-sz */
		command  = (data->bits & 0x0003F) >> 0;
		system   = (data->bits & 0x02FC0) >> 6;
		toggle   = (data->bits & 0x01000) ? 1 : 0;
		scancode = system << 6 | command;

		FUNC0(1, "RC5-sz scancode 0x%04x (toggle: %u)\n",
			   scancode, toggle);

		FUNC8(dev, scancode, toggle);
		data->state = STATE_INACTIVE;
		return 0;
	}

out:
	FUNC0(1, "RC5-sz decode failed at state %i (%uus %s)\n",
		   data->state, FUNC2(ev.duration), FUNC1(ev.pulse));
	data->state = STATE_INACTIVE;
	return -EINVAL;
}