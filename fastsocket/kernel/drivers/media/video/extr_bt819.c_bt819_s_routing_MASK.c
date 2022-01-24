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
struct v4l2_subdev {TYPE_1__* v4l2_dev; } ;
struct bt819 {int input; } ;
struct TYPE_2__ {int /*<<< orphan*/ * notify; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT819_FIFO_RESET_HIGH ; 
 int /*<<< orphan*/  BT819_FIFO_RESET_LOW ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct bt819*,int,int,int) ; 
 int /*<<< orphan*/  debug ; 
 struct bt819* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
			   u32 input, u32 output, u32 config)
{
	struct bt819 *decoder = FUNC1(sd);

	FUNC2(1, debug, sd, "set input %x\n", input);

	if (input < 0 || input > 7)
		return -EINVAL;

	if (sd->v4l2_dev == NULL || sd->v4l2_dev->notify == NULL)
		FUNC3(sd, "no notify found!\n");

	if (decoder->input != input) {
		FUNC4(sd, BT819_FIFO_RESET_LOW, 0);
		decoder->input = input;
		/* select mode */
		if (decoder->input == 0) {
			FUNC0(decoder, 0x0b, 6, 0);
			FUNC0(decoder, 0x1a, 1, 1);
		} else {
			FUNC0(decoder, 0x0b, 6, 1);
			FUNC0(decoder, 0x1a, 1, 0);
		}
		FUNC4(sd, BT819_FIFO_RESET_HIGH, 0);
	}
	return 0;
}