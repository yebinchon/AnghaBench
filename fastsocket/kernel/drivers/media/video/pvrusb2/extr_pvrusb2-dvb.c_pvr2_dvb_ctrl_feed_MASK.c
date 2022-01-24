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
struct pvr2_dvb_adapter {scalar_t__ feedcount; int /*<<< orphan*/  lock; } ;
struct dvb_demux_feed {TYPE_1__* demux; } ;
struct TYPE_2__ {struct pvr2_dvb_adapter* priv; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PVR2_TRACE_DVB_FEED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_dvb_adapter*) ; 
 int FUNC3 (struct pvr2_dvb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct dvb_demux_feed *dvbdmxfeed, int onoff)
{
	struct pvr2_dvb_adapter *adap = dvbdmxfeed->demux->priv;
	int ret = 0;

	if (adap == NULL) return -ENODEV;

	FUNC0(&adap->lock);
	do {
		if (onoff) {
			if (!adap->feedcount) {
				FUNC4(PVR2_TRACE_DVB_FEED,
					   "start feeding demux");
				ret = FUNC3(adap);
				if (ret < 0) break;
			}
			(adap->feedcount)++;
		} else if (adap->feedcount > 0) {
			(adap->feedcount)--;
			if (!adap->feedcount) {
				FUNC4(PVR2_TRACE_DVB_FEED,
					   "stop feeding demux");
				FUNC2(adap);
			}
		}
	} while (0);
	FUNC1(&adap->lock);

	return ret;
}