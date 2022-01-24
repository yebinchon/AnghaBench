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
struct dvb_net {int /*<<< orphan*/  dvbdev; scalar_t__* state; struct dmx_demux* demux; } ;
struct dvb_adapter {int dummy; } ;
struct dmx_demux {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVB_DEVICE_NET ; 
 int DVB_NET_DEVICES_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct dvb_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dvbdev_net ; 

int FUNC1 (struct dvb_adapter *adap, struct dvb_net *dvbnet,
		  struct dmx_demux *dmx)
{
	int i;

	dvbnet->demux = dmx;

	for (i=0; i<DVB_NET_DEVICES_MAX; i++)
		dvbnet->state[i] = 0;

	FUNC0 (adap, &dvbnet->dvbdev, &dvbdev_net,
			     dvbnet, DVB_DEVICE_NET);

	return 0;
}