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
struct TYPE_3__ {scalar_t__ seclen; scalar_t__ secbufp; int /*<<< orphan*/  secbuf_base; int /*<<< orphan*/  secbuf; scalar_t__ tsfeedp; } ;
struct TYPE_4__ {TYPE_1__ sec; } ;
struct dvb_demux_feed {int /*<<< orphan*/  state; TYPE_2__ feed; int /*<<< orphan*/  filter; struct dvb_demux* demux; } ;
struct dvb_demux {int (* start_feed ) (struct dvb_demux_feed*) ;int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; } ;
struct dmx_section_feed {int is_filtering; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMX_STATE_GO ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_demux_feed*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct dvb_demux_feed*) ; 

__attribute__((used)) static int FUNC6(struct dmx_section_feed *feed)
{
	struct dvb_demux_feed *dvbdmxfeed = (struct dvb_demux_feed *)feed;
	struct dvb_demux *dvbdmx = dvbdmxfeed->demux;
	int ret;

	if (FUNC0(&dvbdmx->mutex))
		return -ERESTARTSYS;

	if (feed->is_filtering) {
		FUNC1(&dvbdmx->mutex);
		return -EBUSY;
	}

	if (!dvbdmxfeed->filter) {
		FUNC1(&dvbdmx->mutex);
		return -EINVAL;
	}

	dvbdmxfeed->feed.sec.tsfeedp = 0;
	dvbdmxfeed->feed.sec.secbuf = dvbdmxfeed->feed.sec.secbuf_base;
	dvbdmxfeed->feed.sec.secbufp = 0;
	dvbdmxfeed->feed.sec.seclen = 0;

	if (!dvbdmx->start_feed) {
		FUNC1(&dvbdmx->mutex);
		return -ENODEV;
	}

	FUNC2(dvbdmxfeed);

	if ((ret = dvbdmx->start_feed(dvbdmxfeed)) < 0) {
		FUNC1(&dvbdmx->mutex);
		return ret;
	}

	FUNC3(&dvbdmx->lock);
	feed->is_filtering = 1;
	dvbdmxfeed->state = DMX_STATE_GO;
	FUNC4(&dvbdmx->lock);

	FUNC1(&dvbdmx->mutex);
	return 0;
}