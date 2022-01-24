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
struct urb {int actual_length; TYPE_1__* dev; struct ati_remote* context; } ;
struct input_dev {int dummy; } ;
struct ati_remote {unsigned char* inbuf; unsigned long old_jiffies; unsigned char* old_data; int repeat_count; unsigned long first_jiffies; TYPE_2__* interface; struct input_dev* idev; } ;
struct TYPE_6__ {int kind; int value; int /*<<< orphan*/  code; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  KIND_ACCEL 132 
 int KIND_FILTERED ; 
#define  KIND_LD 131 
 int KIND_LITERAL ; 
#define  KIND_LU 130 
#define  KIND_RD 129 
#define  KIND_RU 128 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int FUNC0 (struct ati_remote*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC2 (int,unsigned char,unsigned char) ; 
 TYPE_3__* ati_remote_tbl ; 
 int channel_mask ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,unsigned char,unsigned char,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*) ; 
 void* jiffies ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repeat_delay ; 
 int /*<<< orphan*/  repeat_filter ; 
 scalar_t__ FUNC10 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct urb *urb)
{
	struct ati_remote *ati_remote = urb->context;
	unsigned char *data= ati_remote->inbuf;
	struct input_dev *dev = ati_remote->idev;
	int index, acc;
	int remote_num;

	/* Deal with strange looking inputs */
	if ( (urb->actual_length != 4) || (data[0] != 0x14) ||
		((data[3] & 0x0f) != 0x00) ) {
		FUNC1(&urb->dev->dev, data, urb->actual_length);
		return;
	}

	/* Mask unwanted remote channels.  */
	/* note: remote_num is 0-based, channel 1 on remote == 0 here */
	remote_num = (data[3] >> 4) & 0x0f;
        if (channel_mask & (1 << (remote_num + 1))) {
		FUNC3(&ati_remote->interface->dev,
			"Masked input from channel 0x%02x: data %02x,%02x, mask= 0x%02lx\n",
			remote_num, data[1], data[2], channel_mask);
		return;
	}

	/* Look up event code index in translation table */
	index = FUNC2(remote_num, data[1], data[2]);
	if (index < 0) {
		FUNC5(&ati_remote->interface->dev,
			 "Unknown input from channel 0x%02x: data %02x,%02x\n",
			 remote_num, data[1], data[2]);
		return;
	}
	FUNC3(&ati_remote->interface->dev,
		"channel 0x%02x; data %02x,%02x; index %d; keycode %d\n",
		remote_num, data[1], data[2], index, ati_remote_tbl[index].code);

	if (ati_remote_tbl[index].kind == KIND_LITERAL) {
		FUNC6(dev, ati_remote_tbl[index].type,
			ati_remote_tbl[index].code,
			ati_remote_tbl[index].value);
		FUNC8(dev);

		ati_remote->old_jiffies = jiffies;
		return;
	}

	if (ati_remote_tbl[index].kind == KIND_FILTERED) {
		unsigned long now = jiffies;

		/* Filter duplicate events which happen "too close" together. */
		if (ati_remote->old_data[0] == data[1] &&
		    ati_remote->old_data[1] == data[2] &&
		    FUNC10(now, ati_remote->old_jiffies +
				     FUNC9(repeat_filter))) {
			ati_remote->repeat_count++;
		} else {
			ati_remote->repeat_count = 0;
			ati_remote->first_jiffies = now;
		}

		ati_remote->old_data[0] = data[1];
		ati_remote->old_data[1] = data[2];
		ati_remote->old_jiffies = now;

		/* Ensure we skip at least the 4 first duplicate events (generated
		 * by a single keypress), and continue skipping until repeat_delay
		 * msecs have passed
		 */
		if (ati_remote->repeat_count > 0 &&
		    (ati_remote->repeat_count < 5 ||
		     FUNC10(now, ati_remote->first_jiffies +
				      FUNC9(repeat_delay))))
			return;


		FUNC6(dev, ati_remote_tbl[index].type,
			ati_remote_tbl[index].code, 1);
		FUNC8(dev);
		FUNC6(dev, ati_remote_tbl[index].type,
			ati_remote_tbl[index].code, 0);
		FUNC8(dev);

	} else {

		/*
		 * Other event kinds are from the directional control pad, and have an
		 * acceleration factor applied to them.  Without this acceleration, the
		 * control pad is mostly unusable.
		 */
		acc = FUNC0(ati_remote);

		switch (ati_remote_tbl[index].kind) {
		case KIND_ACCEL:
			FUNC6(dev, ati_remote_tbl[index].type,
				ati_remote_tbl[index].code,
				ati_remote_tbl[index].value * acc);
			break;
		case KIND_LU:
			FUNC7(dev, REL_X, -acc);
			FUNC7(dev, REL_Y, -acc);
			break;
		case KIND_RU:
			FUNC7(dev, REL_X, acc);
			FUNC7(dev, REL_Y, -acc);
			break;
		case KIND_LD:
			FUNC7(dev, REL_X, -acc);
			FUNC7(dev, REL_Y, acc);
			break;
		case KIND_RD:
			FUNC7(dev, REL_X, acc);
			FUNC7(dev, REL_Y, acc);
			break;
		default:
			FUNC4(&ati_remote->interface->dev, "ati_remote kind=%d\n",
				ati_remote_tbl[index].kind);
		}
		FUNC8(dev);

		ati_remote->old_jiffies = jiffies;
		ati_remote->old_data[0] = data[1];
		ati_remote->old_data[1] = data[2];
	}
}