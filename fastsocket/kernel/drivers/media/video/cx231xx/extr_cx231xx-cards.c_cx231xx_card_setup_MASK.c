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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ decoder; scalar_t__ tuner_type; size_t tuner_i2c_master; } ;
struct cx231xx {size_t model; int tuner_addr; int /*<<< orphan*/ * sd_tuner; TYPE_2__ board; TYPE_1__* i2c_bus; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/ * sd_cx25840; int /*<<< orphan*/  tuner_type; } ;
struct TYPE_6__ {int tuner_addr; int /*<<< orphan*/  tuner_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  i2c_adap; } ;

/* Variables and functions */
 scalar_t__ CX231XX_AVDECODER ; 
 scalar_t__ TUNER_ABSENT ; 
 int /*<<< orphan*/  core ; 
 TYPE_3__* cx231xx_boards ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  load_fw ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 

void FUNC5(struct cx231xx *dev)
{

	FUNC2(dev);

	dev->tuner_type = cx231xx_boards[dev->model].tuner_type;
	if (cx231xx_boards[dev->model].tuner_addr)
		dev->tuner_addr = cx231xx_boards[dev->model].tuner_addr;

	/* request some modules */
	if (dev->board.decoder == CX231XX_AVDECODER) {
		dev->sd_cx25840 = FUNC4(&dev->v4l2_dev,
					&dev->i2c_bus[0].i2c_adap,
					"cx25840", 0x88 >> 1, NULL);
		if (dev->sd_cx25840 == NULL)
			FUNC1("cx25840 subdev registration failure\n");
		FUNC3(dev, core, load_fw);

	}

	/* Initialize the tuner */
	if (dev->board.tuner_type != TUNER_ABSENT) {
		dev->sd_tuner = FUNC4(&dev->v4l2_dev,
						    &dev->i2c_bus[dev->board.tuner_i2c_master].i2c_adap,
						    "tuner",
						    dev->tuner_addr, NULL);
		if (dev->sd_tuner == NULL)
			FUNC1("tuner subdev registration failure\n");
		else
			FUNC0(dev);
	}
}