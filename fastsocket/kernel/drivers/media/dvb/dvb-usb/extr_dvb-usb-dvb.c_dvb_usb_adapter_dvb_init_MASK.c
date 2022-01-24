#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  proposed_mac; struct dvb_usb_adapter* priv; } ;
struct TYPE_19__ {int capabilities; } ;
struct TYPE_13__ {TYPE_8__ dmx; int /*<<< orphan*/  filternum; int /*<<< orphan*/ * write_to_decoder; int /*<<< orphan*/  stop_feed; int /*<<< orphan*/  start_feed; int /*<<< orphan*/  feednum; struct dvb_usb_adapter* priv; } ;
struct TYPE_20__ {scalar_t__ capabilities; TYPE_8__* demux; int /*<<< orphan*/  filternum; } ;
struct dvb_usb_adapter {TYPE_5__ dvb_adap; TYPE_11__ demux; int /*<<< orphan*/  state; int /*<<< orphan*/  dvb_net; TYPE_9__ dmxdev; int /*<<< orphan*/  max_feed_count; TYPE_4__* dev; } ;
struct TYPE_16__ {scalar_t__ (* read_mac_address ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_17__ {TYPE_3__ props; TYPE_2__* udev; int /*<<< orphan*/  owner; TYPE_1__* desc; } ;
struct TYPE_15__ {int /*<<< orphan*/  dev; } ;
struct TYPE_14__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int DMX_SECTION_FILTERING ; 
 int DMX_TS_FILTERING ; 
 int /*<<< orphan*/  DVB_USB_ADAP_STATE_DVB ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*) ; 
 int FUNC3 (TYPE_9__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_8__*) ; 
 int FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,short*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  dvb_usb_start_feed ; 
 int /*<<< orphan*/  dvb_usb_stop_feed ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 

int FUNC10(struct dvb_usb_adapter *adap, short *adapter_nums)
{
	int ret = FUNC5(&adap->dvb_adap, adap->dev->desc->name,
				       adap->dev->owner, &adap->dev->udev->dev,
				       adapter_nums);

	if (ret < 0) {
		FUNC0("dvb_register_adapter failed: error %d", ret);
		goto err;
	}
	adap->dvb_adap.priv = adap;

	if (adap->dev->props.read_mac_address) {
		if (adap->dev->props.read_mac_address(adap->dev,adap->dvb_adap.proposed_mac) == 0)
			FUNC8("MAC address: %pM",adap->dvb_adap.proposed_mac);
		else
			FUNC7("MAC address reading failed.");
	}


	adap->demux.dmx.capabilities = DMX_TS_FILTERING | DMX_SECTION_FILTERING;
	adap->demux.priv             = adap;

	adap->demux.feednum          = adap->demux.filternum = adap->max_feed_count;
	adap->demux.start_feed       = dvb_usb_start_feed;
	adap->demux.stop_feed        = dvb_usb_stop_feed;
	adap->demux.write_to_decoder = NULL;
	if ((ret = FUNC1(&adap->demux)) < 0) {
		FUNC7("dvb_dmx_init failed: error %d",ret);
		goto err_dmx;
	}

	adap->dmxdev.filternum       = adap->demux.filternum;
	adap->dmxdev.demux           = &adap->demux.dmx;
	adap->dmxdev.capabilities    = 0;
	if ((ret = FUNC3(&adap->dmxdev, &adap->dvb_adap)) < 0) {
		FUNC7("dvb_dmxdev_init failed: error %d",ret);
		goto err_dmx_dev;
	}

	FUNC4(&adap->dvb_adap, &adap->dvb_net, &adap->demux.dmx);

	adap->state |= DVB_USB_ADAP_STATE_DVB;
	return 0;

err_dmx_dev:
	FUNC2(&adap->demux);
err_dmx:
	FUNC6(&adap->dvb_adap);
err:
	return ret;
}