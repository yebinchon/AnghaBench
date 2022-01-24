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
typedef  int u32 ;
struct interact {scalar_t__ length; int type; int /*<<< orphan*/  bads; int /*<<< orphan*/  gameport; int /*<<< orphan*/  reads; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
struct gameport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_HAT0Y ; 
 int INTERACT_MAX_LENGTH ; 
#define  INTERACT_TYPE_HHFX 129 
#define  INTERACT_TYPE_PP8D 128 
 struct interact* FUNC0 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/ * interact_abs_hhfx ; 
 int /*<<< orphan*/ * interact_abs_pp8d ; 
 int /*<<< orphan*/ * interact_btn_hhfx ; 
 int /*<<< orphan*/ * interact_btn_pp8d ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int*) ; 

__attribute__((used)) static void FUNC5(struct gameport *gameport)
{
	struct interact *interact = FUNC0(gameport);
	struct input_dev *dev = interact->dev;
	u32 data[3];
	int i;

	interact->reads++;

	if (FUNC4(interact->gameport, interact->length, data) < interact->length) {
		interact->bads++;
	} else {

		for (i = 0; i < 3; i++)
			data[i] <<= INTERACT_MAX_LENGTH - interact->length;

		switch (interact->type) {

			case INTERACT_TYPE_HHFX:

				for (i = 0; i < 4; i++)
					FUNC1(dev, interact_abs_hhfx[i], (data[i & 1] >> ((i >> 1) << 3)) & 0xff);

				for (i = 0; i < 2; i++)
					FUNC1(dev, ABS_HAT0Y - i,
						((data[1] >> ((i << 1) + 17)) & 1)  - ((data[1] >> ((i << 1) + 16)) & 1));

				for (i = 0; i < 8; i++)
					FUNC2(dev, interact_btn_hhfx[i], (data[0] >> (i + 16)) & 1);

				for (i = 0; i < 4; i++)
					FUNC2(dev, interact_btn_hhfx[i + 8], (data[1] >> (i + 20)) & 1);

				break;

			case INTERACT_TYPE_PP8D:

				for (i = 0; i < 2; i++)
					FUNC1(dev, interact_abs_pp8d[i],
						((data[0] >> ((i << 1) + 20)) & 1)  - ((data[0] >> ((i << 1) + 21)) & 1));

				for (i = 0; i < 8; i++)
					FUNC2(dev, interact_btn_pp8d[i], (data[1] >> (i + 16)) & 1);

				break;
		}
	}

	FUNC3(dev);
}