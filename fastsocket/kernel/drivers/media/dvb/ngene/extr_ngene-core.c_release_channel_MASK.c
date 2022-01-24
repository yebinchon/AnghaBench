#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ngene_info {int* io_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* remove_frontend ) (TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* close ) (TYPE_1__*) ;} ;
struct dvb_demux {TYPE_1__ dmx; } ;
struct ngene_channel {size_t number; struct dvb_demux demux; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  mem_frontend; int /*<<< orphan*/  hw_frontend; int /*<<< orphan*/ * fe; int /*<<< orphan*/  demux_tasklet; scalar_t__ running; struct ngene* dev; } ;
struct ngene {int /*<<< orphan*/ * adapter; scalar_t__ cmd_timeout_workaround; struct ngene_info* card_info; } ;

/* Variables and functions */
 int NGENE_IO_TSIN ; 
 int NGENE_IO_TSOUT ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_demux*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  one_adapter ; 
 int /*<<< orphan*/  FUNC5 (struct ngene_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct ngene_channel *chan)
{
	struct dvb_demux *dvbdemux = &chan->demux;
	struct ngene *dev = chan->dev;
	struct ngene_info *ni = dev->card_info;
	int io = ni->io_type[chan->number];

	if (chan->dev->cmd_timeout_workaround && chan->running)
		FUNC5(chan, 0);

	FUNC9(&chan->demux_tasklet);

	if (io & (NGENE_IO_TSIN | NGENE_IO_TSOUT)) {
		if (chan->fe) {
			FUNC4(chan->fe);
			FUNC2(chan->fe);
			chan->fe = NULL;
		}
		dvbdemux->dmx.close(&dvbdemux->dmx);
		dvbdemux->dmx.remove_frontend(&dvbdemux->dmx,
					      &chan->hw_frontend);
		dvbdemux->dmx.remove_frontend(&dvbdemux->dmx,
					      &chan->mem_frontend);
		FUNC1(&chan->dmxdev);
		FUNC0(&chan->demux);

		if (chan->number == 0 || !one_adapter)
			FUNC3(&dev->adapter[chan->number]);
	}
}