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
struct input_dev {int dummy; } ;
struct grip {int* mode; int /*<<< orphan*/  bads; int /*<<< orphan*/  gameport; int /*<<< orphan*/  reads; struct input_dev** dev; } ;
struct gameport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_BRAKE ; 
 int /*<<< orphan*/  ABS_GAS ; 
 int /*<<< orphan*/  ABS_HAT0X ; 
 int /*<<< orphan*/  ABS_HAT0Y ; 
 int /*<<< orphan*/  ABS_HAT1X ; 
 int /*<<< orphan*/  ABS_HAT1Y ; 
 int /*<<< orphan*/  ABS_RX ; 
 int /*<<< orphan*/  ABS_RY ; 
 int /*<<< orphan*/  ABS_THROTTLE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int GRIP_LENGTH_XT ; 
#define  GRIP_MODE_BD 131 
#define  GRIP_MODE_DC 130 
#define  GRIP_MODE_GPP 129 
#define  GRIP_MODE_XT 128 
 struct grip* FUNC0 (struct gameport*) ; 
 int /*<<< orphan*/ * grip_btn_bd ; 
 int /*<<< orphan*/ * grip_btn_dc ; 
 int /*<<< orphan*/ * grip_btn_gpp ; 
 int /*<<< orphan*/ * grip_btn_xt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 

__attribute__((used)) static void FUNC6(struct gameport *gameport)
{
	struct grip *grip = FUNC0(gameport);
	unsigned int data[GRIP_LENGTH_XT];
	struct input_dev *dev;
	int i, j;

	for (i = 0; i < 2; i++) {

		dev = grip->dev[i];
		if (!dev)
			continue;

		grip->reads++;

		switch (grip->mode[i]) {

			case GRIP_MODE_GPP:

				if (FUNC1(grip->gameport, (i << 1) + 4, data)) {
					grip->bads++;
					break;
				}

				FUNC3(dev, ABS_X, ((*data >> 15) & 1) - ((*data >> 16) & 1));
				FUNC3(dev, ABS_Y, ((*data >> 13) & 1) - ((*data >> 12) & 1));

				for (j = 0; j < 12; j++)
					if (grip_btn_gpp[j])
						FUNC4(dev, grip_btn_gpp[j], (*data >> j) & 1);

				break;

			case GRIP_MODE_BD:

				if (FUNC2(grip->gameport, (i << 1) + 4, data)) {
					grip->bads++;
					break;
				}

				FUNC3(dev, ABS_X,        (data[0] >> 2) & 0x3f);
				FUNC3(dev, ABS_Y,  63 - ((data[0] >> 8) & 0x3f));
				FUNC3(dev, ABS_THROTTLE, (data[2] >> 8) & 0x3f);

				FUNC3(dev, ABS_HAT0X, ((data[2] >> 1) & 1) - ( data[2]       & 1));
				FUNC3(dev, ABS_HAT0Y, ((data[2] >> 2) & 1) - ((data[2] >> 3) & 1));

				for (j = 0; j < 5; j++)
					FUNC4(dev, grip_btn_bd[j], (data[3] >> (j + 4)) & 1);

				break;

			case GRIP_MODE_XT:

				if (FUNC2(grip->gameport, (i << 1) + 4, data)) {
					grip->bads++;
					break;
				}

				FUNC3(dev, ABS_X,        (data[0] >> 2) & 0x3f);
				FUNC3(dev, ABS_Y,  63 - ((data[0] >> 8) & 0x3f));
				FUNC3(dev, ABS_BRAKE,    (data[1] >> 2) & 0x3f);
				FUNC3(dev, ABS_GAS,	    (data[1] >> 8) & 0x3f);
				FUNC3(dev, ABS_THROTTLE, (data[2] >> 8) & 0x3f);

				FUNC3(dev, ABS_HAT0X, ((data[2] >> 1) & 1) - ( data[2]       & 1));
				FUNC3(dev, ABS_HAT0Y, ((data[2] >> 2) & 1) - ((data[2] >> 3) & 1));
				FUNC3(dev, ABS_HAT1X, ((data[2] >> 5) & 1) - ((data[2] >> 4) & 1));
				FUNC3(dev, ABS_HAT1Y, ((data[2] >> 6) & 1) - ((data[2] >> 7) & 1));

				for (j = 0; j < 11; j++)
					FUNC4(dev, grip_btn_xt[j], (data[3] >> (j + 3)) & 1);
				break;

			case GRIP_MODE_DC:

				if (FUNC2(grip->gameport, (i << 1) + 4, data)) {
					grip->bads++;
					break;
				}

				FUNC3(dev, ABS_X,        (data[0] >> 2) & 0x3f);
				FUNC3(dev, ABS_Y,        (data[0] >> 8) & 0x3f);
				FUNC3(dev, ABS_RX,       (data[1] >> 2) & 0x3f);
				FUNC3(dev, ABS_RY,	    (data[1] >> 8) & 0x3f);
				FUNC3(dev, ABS_THROTTLE, (data[2] >> 8) & 0x3f);

				FUNC3(dev, ABS_HAT0X, ((data[2] >> 1) & 1) - ( data[2]       & 1));
				FUNC3(dev, ABS_HAT0Y, ((data[2] >> 2) & 1) - ((data[2] >> 3) & 1));

				for (j = 0; j < 9; j++)
					FUNC4(dev, grip_btn_dc[j], (data[3] >> (j + 3)) & 1);
				break;


		}

		FUNC5(dev);
	}
}