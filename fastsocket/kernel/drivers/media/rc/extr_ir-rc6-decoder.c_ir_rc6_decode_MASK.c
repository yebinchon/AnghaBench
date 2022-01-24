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
struct rc6_dec {int state; int header; int toggle; int body; int /*<<< orphan*/  wanted_bits; int /*<<< orphan*/  count; } ;
struct ir_raw_event {int pulse; int /*<<< orphan*/  duration; scalar_t__ reset; } ;
struct TYPE_2__ {int enabled_protocols; int /*<<< orphan*/  prev_ev; struct rc6_dec rc6; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  RC6_0_NBITS ; 
 int /*<<< orphan*/  RC6_6A_LARGE_NBITS ; 
 int RC6_6A_MCE_TOGGLE_MASK ; 
 int /*<<< orphan*/  RC6_6A_SMALL_NBITS ; 
 int RC6_BIT_END ; 
 int /*<<< orphan*/  RC6_BIT_START ; 
 int /*<<< orphan*/  RC6_HEADER_NBITS ; 
#define  RC6_MODE_0 138 
#define  RC6_MODE_6A 137 
 int /*<<< orphan*/  RC6_PREFIX_PULSE ; 
 int /*<<< orphan*/  RC6_PREFIX_SPACE ; 
 int RC6_STARTBIT_MASK ; 
 int RC6_TOGGLE_END ; 
 int /*<<< orphan*/  RC6_TOGGLE_START ; 
 int RC6_UNIT ; 
 int RC_TYPE_RC6 ; 
#define  STATE_BODY_BIT_END 136 
#define  STATE_BODY_BIT_START 135 
#define  STATE_FINISHED 134 
#define  STATE_HEADER_BIT_END 133 
#define  STATE_HEADER_BIT_START 132 
#define  STATE_INACTIVE 131 
#define  STATE_PREFIX_SPACE 130 
#define  STATE_TOGGLE_END 129 
#define  STATE_TOGGLE_START 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ir_raw_event*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ir_raw_event) ; 
 int /*<<< orphan*/  FUNC7 (struct ir_raw_event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rc6_dec*) ; 
 int /*<<< orphan*/  FUNC9 (struct rc_dev*,int,int) ; 

__attribute__((used)) static int FUNC10(struct rc_dev *dev, struct ir_raw_event ev)
{
	struct rc6_dec *data = &dev->raw->rc6;
	u32 scancode;
	u8 toggle;

	if (!(dev->raw->enabled_protocols & RC_TYPE_RC6))
		return 0;

	if (!FUNC6(ev)) {
		if (ev.reset)
			data->state = STATE_INACTIVE;
		return 0;
	}

	if (!FUNC5(ev.duration, RC6_UNIT, RC6_UNIT / 2))
		goto out;

again:
	FUNC0(2, "RC6 decode started at state %i (%uus %s)\n",
		   data->state, FUNC2(ev.duration), FUNC1(ev.pulse));

	if (!FUNC5(ev.duration, RC6_UNIT, RC6_UNIT / 2))
		return 0;

	switch (data->state) {

	case STATE_INACTIVE:
		if (!ev.pulse)
			break;

		/* Note: larger margin on first pulse since each RC6_UNIT
		   is quite short and some hardware takes some time to
		   adjust to the signal */
		if (!FUNC4(ev.duration, RC6_PREFIX_PULSE, RC6_UNIT))
			break;

		data->state = STATE_PREFIX_SPACE;
		data->count = 0;
		return 0;

	case STATE_PREFIX_SPACE:
		if (ev.pulse)
			break;

		if (!FUNC4(ev.duration, RC6_PREFIX_SPACE, RC6_UNIT / 2))
			break;

		data->state = STATE_HEADER_BIT_START;
		return 0;

	case STATE_HEADER_BIT_START:
		if (!FUNC4(ev.duration, RC6_BIT_START, RC6_UNIT / 2))
			break;

		data->header <<= 1;
		if (ev.pulse)
			data->header |= 1;
		data->count++;
		data->state = STATE_HEADER_BIT_END;
		return 0;

	case STATE_HEADER_BIT_END:
		if (!FUNC7(&ev, &dev->raw->prev_ev))
			break;

		if (data->count == RC6_HEADER_NBITS)
			data->state = STATE_TOGGLE_START;
		else
			data->state = STATE_HEADER_BIT_START;

		FUNC3(&ev, RC6_BIT_END);
		goto again;

	case STATE_TOGGLE_START:
		if (!FUNC4(ev.duration, RC6_TOGGLE_START, RC6_UNIT / 2))
			break;

		data->toggle = ev.pulse;
		data->state = STATE_TOGGLE_END;
		return 0;

	case STATE_TOGGLE_END:
		if (!FUNC7(&ev, &dev->raw->prev_ev) ||
		    !FUNC5(ev.duration, RC6_TOGGLE_END, RC6_UNIT / 2))
			break;

		if (!(data->header & RC6_STARTBIT_MASK)) {
			FUNC0(1, "RC6 invalid start bit\n");
			break;
		}

		data->state = STATE_BODY_BIT_START;
		FUNC3(&ev, RC6_TOGGLE_END);
		data->count = 0;

		switch (FUNC8(data)) {
		case RC6_MODE_0:
			data->wanted_bits = RC6_0_NBITS;
			break;
		case RC6_MODE_6A:
			/* This might look weird, but we basically
			   check the value of the first body bit to
			   determine the number of bits in mode 6A */
			if ((!ev.pulse && !FUNC5(ev.duration, RC6_UNIT, RC6_UNIT / 2)) ||
			    FUNC5(ev.duration, RC6_UNIT, RC6_UNIT / 2))
				data->wanted_bits = RC6_6A_LARGE_NBITS;
			else
				data->wanted_bits = RC6_6A_SMALL_NBITS;
			break;
		default:
			FUNC0(1, "RC6 unknown mode\n");
			goto out;
		}
		goto again;

	case STATE_BODY_BIT_START:
		if (!FUNC4(ev.duration, RC6_BIT_START, RC6_UNIT / 2))
			break;

		data->body <<= 1;
		if (ev.pulse)
			data->body |= 1;
		data->count++;
		data->state = STATE_BODY_BIT_END;
		return 0;

	case STATE_BODY_BIT_END:
		if (!FUNC7(&ev, &dev->raw->prev_ev))
			break;

		if (data->count == data->wanted_bits)
			data->state = STATE_FINISHED;
		else
			data->state = STATE_BODY_BIT_START;

		FUNC3(&ev, RC6_BIT_END);
		goto again;

	case STATE_FINISHED:
		if (ev.pulse)
			break;

		switch (FUNC8(data)) {
		case RC6_MODE_0:
			scancode = data->body & 0xffff;
			toggle = data->toggle;
			FUNC0(1, "RC6(0) scancode 0x%04x (toggle: %u)\n",
				   scancode, toggle);
			break;
		case RC6_MODE_6A:
			if (data->wanted_bits == RC6_6A_LARGE_NBITS) {
				toggle = data->body & RC6_6A_MCE_TOGGLE_MASK ? 1 : 0;
				scancode = data->body & ~RC6_6A_MCE_TOGGLE_MASK;
			} else {
				toggle = 0;
				scancode = data->body & 0xffffff;
			}

			FUNC0(1, "RC6(6A) scancode 0x%08x (toggle: %u)\n",
				   scancode, toggle);
			break;
		default:
			FUNC0(1, "RC6 unknown mode\n");
			goto out;
		}

		FUNC9(dev, scancode, toggle);
		data->state = STATE_INACTIVE;
		return 0;
	}

out:
	FUNC0(1, "RC6 decode failed at state %i (%uus %s)\n",
		   data->state, FUNC2(ev.duration), FUNC1(ev.pulse));
	data->state = STATE_INACTIVE;
	return -EINVAL;
}