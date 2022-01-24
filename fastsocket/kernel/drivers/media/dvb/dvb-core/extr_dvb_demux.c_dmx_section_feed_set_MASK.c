#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_3__ {int check_crc; } ;
struct TYPE_4__ {TYPE_1__ sec; } ;
struct dvb_demux_feed {int pid; size_t buffer_size; int /*<<< orphan*/  state; int /*<<< orphan*/ * buffer; TYPE_2__ feed; struct dvb_demux* demux; } ;
struct dvb_demux {int /*<<< orphan*/  mutex; } ;
struct dmx_section_feed {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMX_STATE_READY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_demux_feed*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 

__attribute__((used)) static int FUNC4(struct dmx_section_feed *feed,
				u16 pid, size_t circular_buffer_size,
				int check_crc)
{
	struct dvb_demux_feed *dvbdmxfeed = (struct dvb_demux_feed *)feed;
	struct dvb_demux *dvbdmx = dvbdmxfeed->demux;

	if (pid > 0x1fff)
		return -EINVAL;

	if (FUNC1(&dvbdmx->mutex))
		return -ERESTARTSYS;

	FUNC0(dvbdmxfeed);

	dvbdmxfeed->pid = pid;
	dvbdmxfeed->buffer_size = circular_buffer_size;
	dvbdmxfeed->feed.sec.check_crc = check_crc;

#ifdef NOBUFS
	dvbdmxfeed->buffer = NULL;
#else
	dvbdmxfeed->buffer = FUNC3(dvbdmxfeed->buffer_size);
	if (!dvbdmxfeed->buffer) {
		FUNC2(&dvbdmx->mutex);
		return -ENOMEM;
	}
#endif

	dvbdmxfeed->state = DMX_STATE_READY;
	FUNC2(&dvbdmx->mutex);
	return 0;
}