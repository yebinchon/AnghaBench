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
struct flexcop_device {int has_32_hw_pid_filter; int feedcount; scalar_t__ extra_feedcount; int /*<<< orphan*/  (* stream_control ) (struct flexcop_device*,int) ;scalar_t__ pid_filtering; } ;
struct dvb_demux_feed {int index; int pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct flexcop_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct flexcop_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct flexcop_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct flexcop_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct flexcop_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct flexcop_device*,int) ; 

int FUNC6(struct flexcop_device *fc,
		struct dvb_demux_feed *dvbdmxfeed, int onoff)
{
	int max_pid_filter = 6 + fc->has_32_hw_pid_filter*32;

	fc->feedcount += onoff ? 1 : -1; /* the number of PIDs/Feed currently requested */
	if (dvbdmxfeed->index >= max_pid_filter)
		fc->extra_feedcount += onoff ? 1 : -1;

	/* toggle complete-TS-streaming when:
	 * - pid_filtering is not enabled and it is the first or last feed requested
	 * - pid_filtering is enabled,
	 *   - but the number of requested feeds is exceeded
	 *   - or the requested pid is 0x2000 */

	if (!fc->pid_filtering && fc->feedcount == onoff)
		FUNC4(fc, onoff);

	if (fc->pid_filtering) {
		FUNC1 \
			(fc, dvbdmxfeed->index, dvbdmxfeed->pid, onoff);

		if (fc->extra_feedcount > 0)
			FUNC4(fc, 1);
		else if (dvbdmxfeed->pid == 0x2000)
			FUNC4(fc, onoff);
		else
			FUNC4(fc, 0);
	}

	/* if it was the first or last feed request change the stream-status */
	if (fc->feedcount == onoff) {
		FUNC2(fc, onoff);
		if (fc->stream_control) /* device specific stream control */
			fc->stream_control(fc, onoff);

		/* feeding stopped -> reset the flexcop filter*/
		if (onoff == 0) {
			FUNC3(fc);
			FUNC0(fc);
		}
	}
	return 0;
}