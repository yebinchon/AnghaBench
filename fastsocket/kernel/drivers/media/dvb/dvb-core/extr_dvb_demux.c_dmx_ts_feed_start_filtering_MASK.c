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
struct dvb_demux_feed {scalar_t__ state; scalar_t__ type; struct dvb_demux* demux; } ;
struct dvb_demux {int (* start_feed ) (struct dvb_demux_feed*) ;int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; } ;
struct dmx_ts_feed {int is_filtering; } ;

/* Variables and functions */
 scalar_t__ DMX_STATE_GO ; 
 scalar_t__ DMX_STATE_READY ; 
 scalar_t__ DMX_TYPE_TS ; 
 int EINVAL ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct dvb_demux_feed*) ; 

__attribute__((used)) static int FUNC5(struct dmx_ts_feed *ts_feed)
{
	struct dvb_demux_feed *feed = (struct dvb_demux_feed *)ts_feed;
	struct dvb_demux *demux = feed->demux;
	int ret;

	if (FUNC0(&demux->mutex))
		return -ERESTARTSYS;

	if (feed->state != DMX_STATE_READY || feed->type != DMX_TYPE_TS) {
		FUNC1(&demux->mutex);
		return -EINVAL;
	}

	if (!demux->start_feed) {
		FUNC1(&demux->mutex);
		return -ENODEV;
	}

	if ((ret = demux->start_feed(feed)) < 0) {
		FUNC1(&demux->mutex);
		return ret;
	}

	FUNC2(&demux->lock);
	ts_feed->is_filtering = 1;
	feed->state = DMX_STATE_GO;
	FUNC3(&demux->lock);
	FUNC1(&demux->mutex);

	return 0;
}