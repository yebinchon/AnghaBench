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
typedef  scalar_t__ u16 ;
struct timespec {int dummy; } ;
struct dvb_demux_feed {size_t buffer_size; int ts_type; int pes_type; int /*<<< orphan*/  state; int /*<<< orphan*/ * buffer; struct timespec timeout; scalar_t__ pid; struct dvb_demux* demux; } ;
struct dvb_demux {int /*<<< orphan*/  mutex; scalar_t__* pids; struct dvb_demux_feed** pesfilter; } ;
struct dmx_ts_feed {int dummy; } ;
typedef  enum dmx_ts_pes { ____Placeholder_dmx_ts_pes } dmx_ts_pes ;

/* Variables and functions */
 scalar_t__ DMX_MAX_PID ; 
 int /*<<< orphan*/  DMX_STATE_READY ; 
 int DMX_TS_PES_OTHER ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int TS_DECODER ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_demux_feed*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 

__attribute__((used)) static int FUNC4(struct dmx_ts_feed *ts_feed, u16 pid, int ts_type,
			   enum dmx_ts_pes pes_type,
			   size_t circular_buffer_size, struct timespec timeout)
{
	struct dvb_demux_feed *feed = (struct dvb_demux_feed *)ts_feed;
	struct dvb_demux *demux = feed->demux;

	if (pid > DMX_MAX_PID)
		return -EINVAL;

	if (FUNC1(&demux->mutex))
		return -ERESTARTSYS;

	if (ts_type & TS_DECODER) {
		if (pes_type >= DMX_TS_PES_OTHER) {
			FUNC2(&demux->mutex);
			return -EINVAL;
		}

		if (demux->pesfilter[pes_type] &&
		    demux->pesfilter[pes_type] != feed) {
			FUNC2(&demux->mutex);
			return -EINVAL;
		}

		demux->pesfilter[pes_type] = feed;
		demux->pids[pes_type] = pid;
	}

	FUNC0(feed);

	feed->pid = pid;
	feed->buffer_size = circular_buffer_size;
	feed->timeout = timeout;
	feed->ts_type = ts_type;
	feed->pes_type = pes_type;

	if (feed->buffer_size) {
#ifdef NOBUFS
		feed->buffer = NULL;
#else
		feed->buffer = FUNC3(feed->buffer_size);
		if (!feed->buffer) {
			FUNC2(&demux->mutex);
			return -ENOMEM;
		}
#endif
	}

	feed->state = DMX_STATE_READY;
	FUNC2(&demux->mutex);

	return 0;
}