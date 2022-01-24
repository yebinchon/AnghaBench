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
typedef  int /*<<< orphan*/  u16 ;
struct firedtv {int /*<<< orphan*/  demux_mutex; } ;
struct dvb_demux_feed {scalar_t__ type; int ts_type; size_t pes_type; scalar_t__ priv; struct dvb_demux* demux; } ;
struct TYPE_4__ {TYPE_1__* frontend; } ;
struct dvb_demux {int* pids; int /*<<< orphan*/ ** pesfilter; TYPE_2__ dmx; struct firedtv* priv; } ;
struct TYPE_3__ {scalar_t__ source; } ;

/* Variables and functions */
 scalar_t__ DMX_MEMORY_FE ; 
 size_t DMX_TS_PES_OTHER ; 
 scalar_t__ DMX_TYPE_TS ; 
 int EINTR ; 
 int EINVAL ; 
 int TS_DECODER ; 
 int TS_PACKET ; 
 int FUNC0 (struct firedtv*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct firedtv*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct firedtv*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct dvb_demux_feed *dvbdmxfeed)
{
	struct dvb_demux *demux = dvbdmxfeed->demux;
	struct firedtv *fdtv = demux->priv;
	int pidc, c, ret;
	u16 pids[16];

	if (dvbdmxfeed->type == DMX_TYPE_TS &&
	    !((dvbdmxfeed->ts_type & TS_PACKET) &&
	      (demux->dmx.frontend->source != DMX_MEMORY_FE))) {

		if (dvbdmxfeed->ts_type & TS_DECODER) {
			if (dvbdmxfeed->pes_type >= DMX_TS_PES_OTHER ||
			    !demux->pesfilter[dvbdmxfeed->pes_type])
				return -EINVAL;

			demux->pids[dvbdmxfeed->pes_type] |= 0x8000;
			demux->pesfilter[dvbdmxfeed->pes_type] = NULL;
		}

		if (!(dvbdmxfeed->ts_type & TS_DECODER &&
		      dvbdmxfeed->pes_type < DMX_TS_PES_OTHER))
			return 0;
	}

	if (FUNC3(&fdtv->demux_mutex))
		return -EINTR;

	c = (unsigned long)dvbdmxfeed->priv;
	FUNC2(fdtv, c);
	FUNC1(fdtv, &pidc, pids);

	ret = FUNC0(fdtv, pidc, pids);

	FUNC4(&fdtv->demux_mutex);

	return ret;
}