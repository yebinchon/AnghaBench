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
struct dvb_demux_filter {int /*<<< orphan*/  state; struct dvb_demux_filter* next; struct dvb_demux_feed* feed; } ;
struct dvb_demux_feed {struct dvb_demux_filter* filter; struct dvb_demux* demux; } ;
struct dvb_demux {int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; } ;
struct dmx_section_filter {int dummy; } ;
struct dmx_section_feed {int /*<<< orphan*/  (* stop_filtering ) (struct dmx_section_feed*) ;scalar_t__ is_filtering; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMX_STATE_FREE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dmx_section_feed*) ; 

__attribute__((used)) static int FUNC5(struct dmx_section_feed *feed,
					   struct dmx_section_filter *filter)
{
	struct dvb_demux_filter *dvbdmxfilter = (struct dvb_demux_filter *)filter, *f;
	struct dvb_demux_feed *dvbdmxfeed = (struct dvb_demux_feed *)feed;
	struct dvb_demux *dvbdmx = dvbdmxfeed->demux;

	FUNC0(&dvbdmx->mutex);

	if (dvbdmxfilter->feed != dvbdmxfeed) {
		FUNC1(&dvbdmx->mutex);
		return -EINVAL;
	}

	if (feed->is_filtering)
		feed->stop_filtering(feed);

	FUNC2(&dvbdmx->lock);
	f = dvbdmxfeed->filter;

	if (f == dvbdmxfilter) {
		dvbdmxfeed->filter = dvbdmxfilter->next;
	} else {
		while (f->next != dvbdmxfilter)
			f = f->next;
		f->next = f->next->next;
	}

	dvbdmxfilter->state = DMX_STATE_FREE;
	FUNC3(&dvbdmx->lock);
	FUNC1(&dvbdmx->mutex);
	return 0;
}