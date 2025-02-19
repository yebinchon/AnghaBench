
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_18__ {int proposed_mac; struct dvb_usb_adapter* priv; } ;
struct TYPE_19__ {int capabilities; } ;
struct TYPE_13__ {TYPE_8__ dmx; int filternum; int * write_to_decoder; int stop_feed; int start_feed; int feednum; struct dvb_usb_adapter* priv; } ;
struct TYPE_20__ {scalar_t__ capabilities; TYPE_8__* demux; int filternum; } ;
struct dvb_usb_adapter {TYPE_5__ dvb_adap; TYPE_11__ demux; int state; int dvb_net; TYPE_9__ dmxdev; int max_feed_count; TYPE_4__* dev; } ;
struct TYPE_16__ {scalar_t__ (* read_mac_address ) (TYPE_4__*,int ) ;} ;
struct TYPE_17__ {TYPE_3__ props; TYPE_2__* udev; int owner; TYPE_1__* desc; } ;
struct TYPE_15__ {int dev; } ;
struct TYPE_14__ {int name; } ;


 int DMX_SECTION_FILTERING ;
 int DMX_TS_FILTERING ;
 int DVB_USB_ADAP_STATE_DVB ;
 int deb_info (char*,int) ;
 int dvb_dmx_init (TYPE_11__*) ;
 int dvb_dmx_release (TYPE_11__*) ;
 int dvb_dmxdev_init (TYPE_9__*,TYPE_5__*) ;
 int dvb_net_init (TYPE_5__*,int *,TYPE_8__*) ;
 int dvb_register_adapter (TYPE_5__*,int ,int ,int *,short*) ;
 int dvb_unregister_adapter (TYPE_5__*) ;
 int dvb_usb_start_feed ;
 int dvb_usb_stop_feed ;
 int err (char*,...) ;
 int info (char*,int ) ;
 scalar_t__ stub1 (TYPE_4__*,int ) ;

int dvb_usb_adapter_dvb_init(struct dvb_usb_adapter *adap, short *adapter_nums)
{
 int ret = dvb_register_adapter(&adap->dvb_adap, adap->dev->desc->name,
           adap->dev->owner, &adap->dev->udev->dev,
           adapter_nums);

 if (ret < 0) {
  deb_info("dvb_register_adapter failed: error %d", ret);
  goto err;
 }
 adap->dvb_adap.priv = adap;

 if (adap->dev->props.read_mac_address) {
  if (adap->dev->props.read_mac_address(adap->dev,adap->dvb_adap.proposed_mac) == 0)
   info("MAC address: %pM",adap->dvb_adap.proposed_mac);
  else
   err("MAC address reading failed.");
 }


 adap->demux.dmx.capabilities = DMX_TS_FILTERING | DMX_SECTION_FILTERING;
 adap->demux.priv = adap;

 adap->demux.feednum = adap->demux.filternum = adap->max_feed_count;
 adap->demux.start_feed = dvb_usb_start_feed;
 adap->demux.stop_feed = dvb_usb_stop_feed;
 adap->demux.write_to_decoder = ((void*)0);
 if ((ret = dvb_dmx_init(&adap->demux)) < 0) {
  err("dvb_dmx_init failed: error %d",ret);
  goto err_dmx;
 }

 adap->dmxdev.filternum = adap->demux.filternum;
 adap->dmxdev.demux = &adap->demux.dmx;
 adap->dmxdev.capabilities = 0;
 if ((ret = dvb_dmxdev_init(&adap->dmxdev, &adap->dvb_adap)) < 0) {
  err("dvb_dmxdev_init failed: error %d",ret);
  goto err_dmx_dev;
 }

 dvb_net_init(&adap->dvb_adap, &adap->dvb_net, &adap->demux.dmx);

 adap->state |= DVB_USB_ADAP_STATE_DVB;
 return 0;

err_dmx_dev:
 dvb_dmx_release(&adap->demux);
err_dmx:
 dvb_unregister_adapter(&adap->dvb_adap);
err:
 return ret;
}
