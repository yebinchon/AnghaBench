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
struct psmouse {unsigned char* packet; struct input_dev* dev; struct alps_data* private; } ;
struct input_dev {int dummy; } ;
struct alps_fields {int x; int y; int z; int left; int right; int middle; int ts_left; int ts_right; int ts_middle; scalar_t__ is_mp; scalar_t__ first_mp; } ;
struct alps_data {int multi_packet; int quirks; int /*<<< orphan*/  (* decode_fields ) (struct alps_fields*,unsigned char*) ;struct input_dev* dev2; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int ALPS_QUIRK_TRACKSTICK_BUTTONS ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct alps_fields*,unsigned char*) ; 

__attribute__((used)) static void FUNC4(struct psmouse *psmouse)
{
	struct alps_data *priv = psmouse->private;
	unsigned char *packet = psmouse->packet;
	struct input_dev *dev = psmouse->dev;
	struct input_dev *dev2 = priv->dev2;
	struct alps_fields f;

	priv->decode_fields(&f, packet);

	/*
	 * There's no single feature of touchpad position and bitmap
	 * packets that can be used to distinguish between them. We
	 * rely on the fact that a bitmap packet should always follow
	 * a position packet with bit 6 of packet[4] set.
	 */
	if (priv->multi_packet) {
		priv->multi_packet = 0;

		/*
		 * Sometimes a position packet will indicate a multi-packet
		 * sequence, but then what follows is another position
		 * packet. Check for this, and when it happens process the
		 * position packet as usual.
		 */
		if (f.first_mp) {
			/*
			 * Bitmap packets are not yet supported, so for now
			 * just ignore them.
			 */
			return;
		}
	}

	if (!priv->multi_packet && f.first_mp)
		priv->multi_packet = 1;
	else
		priv->multi_packet = 0;

	if (f.is_mp)
		return;

	/*
	 * Sometimes the hardware sends a single packet with z = 0
	 * in the middle of a stream. Real releases generate packets
	 * with x, y, and z all zero, so these seem to be flukes.
	 * Ignore them.
	 */
	if (f.x && f.y && !f.z)
		return;

	if (f.z >= 64)
		FUNC1(dev, BTN_TOUCH, 1);
	else
		FUNC1(dev, BTN_TOUCH, 0);

	if (f.z > 0) {
		FUNC0(dev, ABS_X, f.x);
		FUNC0(dev, ABS_Y, f.y);
	}
	FUNC0(dev, ABS_PRESSURE, f.z);

	FUNC1(dev, BTN_TOOL_FINGER, f.z > 0);
	FUNC1(dev, BTN_LEFT, f.left);
	FUNC1(dev, BTN_RIGHT, f.right);
	FUNC1(dev, BTN_MIDDLE, f.middle);

	FUNC2(dev);

	if (!(priv->quirks & ALPS_QUIRK_TRACKSTICK_BUTTONS)) {
		FUNC1(dev2, BTN_LEFT, f.ts_left);
		FUNC1(dev2, BTN_RIGHT, f.ts_right);
		FUNC1(dev2, BTN_MIDDLE, f.ts_middle);
		FUNC2(dev2);
	}
}