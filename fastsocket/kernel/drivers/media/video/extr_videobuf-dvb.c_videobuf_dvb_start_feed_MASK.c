#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct videobuf_dvb {int nfeeds; int /*<<< orphan*/  lock; int /*<<< orphan*/ * thread; int /*<<< orphan*/  name; } ;
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct TYPE_2__ {int /*<<< orphan*/  frontend; } ;
struct dvb_demux {TYPE_1__ dmx; struct videobuf_dvb* priv; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,struct videobuf_dvb*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  videobuf_dvb_thread ; 

__attribute__((used)) static int FUNC5(struct dvb_demux_feed *feed)
{
	struct dvb_demux *demux  = feed->demux;
	struct videobuf_dvb *dvb = demux->priv;
	int rc;

	if (!demux->dmx.frontend)
		return -EINVAL;

	FUNC3(&dvb->lock);
	dvb->nfeeds++;
	rc = dvb->nfeeds;

	if (NULL != dvb->thread)
		goto out;
	dvb->thread = FUNC2(videobuf_dvb_thread,
				  dvb, "%s dvb", dvb->name);
	if (FUNC0(dvb->thread)) {
		rc = FUNC1(dvb->thread);
		dvb->thread = NULL;
	}

out:
	FUNC4(&dvb->lock);
	return rc;
}