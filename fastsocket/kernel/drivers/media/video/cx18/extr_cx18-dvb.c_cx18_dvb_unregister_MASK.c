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
struct dmx_demux {int /*<<< orphan*/  (* remove_frontend ) (struct dmx_demux*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* close ) (struct dmx_demux*) ;} ;
struct dvb_demux {struct dmx_demux dmx; } ;
struct dvb_adapter {int dummy; } ;
struct cx18_stream {struct cx18_dvb* dvb; struct cx18* cx; } ;
struct cx18_dvb {int /*<<< orphan*/  fe; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  hw_frontend; int /*<<< orphan*/  mem_frontend; int /*<<< orphan*/  dvbnet; struct dvb_demux demux; struct dvb_adapter dvb_adapter; int /*<<< orphan*/  enabled; } ;
struct cx18 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_demux*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dmx_demux*) ; 
 int /*<<< orphan*/  FUNC8 (struct dmx_demux*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct dmx_demux*,int /*<<< orphan*/ *) ; 

void FUNC10(struct cx18_stream *stream)
{
	struct cx18 *cx = stream->cx;
	struct cx18_dvb *dvb = stream->dvb;
	struct dvb_adapter *dvb_adapter;
	struct dvb_demux *dvbdemux;
	struct dmx_demux *dmx;

	FUNC0("unregister DVB\n");

	if (dvb == NULL || !dvb->enabled)
		return;

	dvb_adapter = &dvb->dvb_adapter;
	dvbdemux = &dvb->demux;
	dmx = &dvbdemux->dmx;

	dmx->close(dmx);
	FUNC4(&dvb->dvbnet);
	dmx->remove_frontend(dmx, &dvb->mem_frontend);
	dmx->remove_frontend(dmx, &dvb->hw_frontend);
	FUNC2(&dvb->dmxdev);
	FUNC1(dvbdemux);
	FUNC6(dvb->fe);
	FUNC3(dvb->fe);
	FUNC5(dvb_adapter);
}