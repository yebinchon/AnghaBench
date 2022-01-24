#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct s2255_dev {TYPE_4__* udev; } ;
struct TYPE_7__ {TYPE_2__* frame; } ;
struct TYPE_5__ {int /*<<< orphan*/  v4l2_dev; } ;
struct s2255_channel {size_t idx; int last_frame; TYPE_3__ buffer; scalar_t__ cur_frame; scalar_t__ bad_payload; TYPE_1__ vdev; } ;
typedef  scalar_t__ __le32 ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {scalar_t__ cur_size; scalar_t__ ulState; } ;

/* Variables and functions */
 scalar_t__ CMD_START ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long* G_chnmap ; 
 scalar_t__ IN_DATA_TOKEN ; 
 int SYS_FRAMES ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*,unsigned char*,int) ; 
 struct s2255_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct s2255_channel *channel)
{
	unsigned char *buffer;
	int res;
	unsigned long chn_rev;
	int j;
	struct s2255_dev *dev = FUNC6(channel->vdev.v4l2_dev);
	chn_rev = G_chnmap[channel->idx];
	buffer = FUNC4(512, GFP_KERNEL);
	if (buffer == NULL) {
		FUNC1(&dev->udev->dev, "out of mem\n");
		return -ENOMEM;
	}

	channel->last_frame = -1;
	channel->bad_payload = 0;
	channel->cur_frame = 0;
	for (j = 0; j < SYS_FRAMES; j++) {
		channel->buffer.frame[j].ulState = 0;
		channel->buffer.frame[j].cur_size = 0;
	}

	/* send the start command */
	*(__le32 *) buffer = IN_DATA_TOKEN;
	*((__le32 *) buffer + 1) = (__le32) FUNC0(chn_rev);
	*((__le32 *) buffer + 2) = CMD_START;
	res = FUNC5(dev->udev, (unsigned char *)buffer, 512);
	if (res != 0)
		FUNC1(&dev->udev->dev, "CMD_START error\n");

	FUNC2(2, "start acquire exit[%d] %d \n", channel->idx, res);
	FUNC3(buffer);
	return 0;
}