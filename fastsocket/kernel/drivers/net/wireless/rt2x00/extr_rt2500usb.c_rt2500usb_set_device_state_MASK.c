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
struct rt2x00_dev {int dummy; } ;
typedef  enum dev_state { ____Placeholder_dev_state } dev_state ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  STATE_AWAKE 135 
#define  STATE_DEEP_SLEEP 134 
#define  STATE_RADIO_IRQ_OFF 133 
#define  STATE_RADIO_IRQ_ON 132 
#define  STATE_RADIO_OFF 131 
#define  STATE_RADIO_ON 130 
#define  STATE_SLEEP 129 
#define  STATE_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*) ; 
 int FUNC1 (struct rt2x00_dev*) ; 
 int FUNC2 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,char*,int,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct rt2x00_dev *rt2x00dev,
				      enum dev_state state)
{
	int retval = 0;

	switch (state) {
	case STATE_RADIO_ON:
		retval = FUNC1(rt2x00dev);
		break;
	case STATE_RADIO_OFF:
		FUNC0(rt2x00dev);
		break;
	case STATE_RADIO_IRQ_ON:
	case STATE_RADIO_IRQ_OFF:
		/* No support, but no error either */
		break;
	case STATE_DEEP_SLEEP:
	case STATE_SLEEP:
	case STATE_STANDBY:
	case STATE_AWAKE:
		retval = FUNC2(rt2x00dev, state);
		break;
	default:
		retval = -ENOTSUPP;
		break;
	}

	if (FUNC4(retval))
		FUNC3(rt2x00dev, "Device failed to enter state %d (%d)\n",
			   state, retval);

	return retval;
}