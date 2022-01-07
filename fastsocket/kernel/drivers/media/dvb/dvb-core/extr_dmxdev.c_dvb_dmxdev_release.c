
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dmxdev {int exit; TYPE_1__* demux; int * filter; TYPE_2__* dvr_dvbdev; TYPE_2__* dvbdev; } ;
struct TYPE_4__ {int users; int wait_queue; } ;
struct TYPE_3__ {int (* close ) (TYPE_1__*) ;} ;


 int dvb_unregister_device (TYPE_2__*) ;
 int stub1 (TYPE_1__*) ;
 int vfree (int *) ;
 int wait_event (int ,int) ;

void dvb_dmxdev_release(struct dmxdev *dmxdev)
{
 dmxdev->exit=1;
 if (dmxdev->dvbdev->users > 1) {
  wait_event(dmxdev->dvbdev->wait_queue,
    dmxdev->dvbdev->users==1);
 }
 if (dmxdev->dvr_dvbdev->users > 1) {
  wait_event(dmxdev->dvr_dvbdev->wait_queue,
    dmxdev->dvr_dvbdev->users==1);
 }

 dvb_unregister_device(dmxdev->dvbdev);
 dvb_unregister_device(dmxdev->dvr_dvbdev);

 vfree(dmxdev->filter);
 dmxdev->filter = ((void*)0);
 dmxdev->demux->close(dmxdev->demux);
}
