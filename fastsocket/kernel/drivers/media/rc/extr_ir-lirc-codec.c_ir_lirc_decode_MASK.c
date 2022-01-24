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
typedef  int /*<<< orphan*/  u64 ;
struct rc_dev {TYPE_2__* raw; } ;
struct lirc_codec {int gap; int gap_duration; TYPE_1__* drv; int /*<<< orphan*/  gap_start; int /*<<< orphan*/  send_timeout_reports; } ;
struct ir_raw_event {int duration; scalar_t__ pulse; scalar_t__ timeout; int /*<<< orphan*/  carrier; scalar_t__ carrier_report; scalar_t__ reset; } ;
struct TYPE_6__ {int /*<<< orphan*/  wait_poll; } ;
struct TYPE_5__ {int enabled_protocols; struct lirc_codec lirc; } ;
struct TYPE_4__ {TYPE_3__* rbuf; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 scalar_t__ LIRC_VALUE_MASK ; 
 int RC_TYPE_LIRC ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,unsigned char*) ; 
 int FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct rc_dev *dev, struct ir_raw_event ev)
{
	struct lirc_codec *lirc = &dev->raw->lirc;
	int sample;

	if (!(dev->raw->enabled_protocols & RC_TYPE_LIRC))
		return 0;

	if (!dev->raw->lirc.drv || !dev->raw->lirc.drv->rbuf)
		return -EINVAL;

	/* Packet start */
	if (ev.reset)
		return 0;

	/* Carrier reports */
	if (ev.carrier_report) {
		sample = FUNC1(ev.carrier);
		FUNC0(2, "carrier report (freq: %d)\n", sample);

	/* Packet end */
	} else if (ev.timeout) {

		if (lirc->gap)
			return 0;

		lirc->gap_start = FUNC8();
		lirc->gap = true;
		lirc->gap_duration = ev.duration;

		if (!lirc->send_timeout_reports)
			return 0;

		sample = FUNC4(ev.duration / 1000);
		FUNC0(2, "timeout report (duration: %d)\n", sample);

	/* Normal sample */
	} else {

		if (lirc->gap) {
			int gap_sample;

			lirc->gap_duration += FUNC10(FUNC9(FUNC8(),
				lirc->gap_start));

			/* Convert to ms and cap by LIRC_VALUE_MASK */
			FUNC7(lirc->gap_duration, 1000);
			lirc->gap_duration = FUNC12(lirc->gap_duration,
							(u64)LIRC_VALUE_MASK);

			gap_sample = FUNC3(lirc->gap_duration);
			FUNC11(dev->raw->lirc.drv->rbuf,
						(unsigned char *) &gap_sample);
			lirc->gap = false;
		}

		sample = ev.pulse ? FUNC2(ev.duration / 1000) :
					FUNC3(ev.duration / 1000);
		FUNC0(2, "delivering %uus %s to lirc_dev\n",
			   FUNC6(ev.duration), FUNC5(ev.pulse));
	}

	FUNC11(dev->raw->lirc.drv->rbuf,
			  (unsigned char *) &sample);
	FUNC13(&dev->raw->lirc.drv->rbuf->wait_poll);

	return 0;
}