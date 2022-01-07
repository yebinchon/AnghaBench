
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dvb_adapter {int dummy; } ;
struct dmxdev_filter {int dummy; } ;
struct dmxdev {int filternum; int dvr_buffer; int dvr_dvbdev; int dvbdev; TYPE_2__* filter; int lock; int mutex; TYPE_3__* demux; } ;
struct TYPE_7__ {scalar_t__ (* open ) (TYPE_3__*) ;} ;
struct TYPE_5__ {int * data; } ;
struct TYPE_6__ {TYPE_1__ buffer; struct dmxdev* dev; } ;


 int DMXDEV_STATE_FREE ;
 int DVB_DEVICE_DEMUX ;
 int DVB_DEVICE_DVR ;
 int ENOMEM ;
 int EUSERS ;
 int dvb_dmxdev_filter_state_set (TYPE_2__*,int ) ;
 int dvb_register_device (struct dvb_adapter*,int *,int *,struct dmxdev*,int ) ;
 int dvb_ringbuffer_init (int *,int *,int) ;
 int dvbdev_demux ;
 int dvbdev_dvr ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 scalar_t__ stub1 (TYPE_3__*) ;
 TYPE_2__* vmalloc (int) ;

int dvb_dmxdev_init(struct dmxdev *dmxdev, struct dvb_adapter *dvb_adapter)
{
 int i;

 if (dmxdev->demux->open(dmxdev->demux) < 0)
  return -EUSERS;

 dmxdev->filter = vmalloc(dmxdev->filternum * sizeof(struct dmxdev_filter));
 if (!dmxdev->filter)
  return -ENOMEM;

 mutex_init(&dmxdev->mutex);
 spin_lock_init(&dmxdev->lock);
 for (i = 0; i < dmxdev->filternum; i++) {
  dmxdev->filter[i].dev = dmxdev;
  dmxdev->filter[i].buffer.data = ((void*)0);
  dvb_dmxdev_filter_state_set(&dmxdev->filter[i],
         DMXDEV_STATE_FREE);
 }

 dvb_register_device(dvb_adapter, &dmxdev->dvbdev, &dvbdev_demux, dmxdev,
       DVB_DEVICE_DEMUX);
 dvb_register_device(dvb_adapter, &dmxdev->dvr_dvbdev, &dvbdev_dvr,
       dmxdev, DVB_DEVICE_DVR);

 dvb_ringbuffer_init(&dmxdev->dvr_buffer, ((void*)0), 8192);

 return 0;
}
