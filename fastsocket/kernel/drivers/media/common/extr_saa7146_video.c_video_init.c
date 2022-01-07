
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned long data; int function; } ;
struct TYPE_5__ {struct saa7146_dev* dev; TYPE_3__ timeout; int queue; } ;
struct saa7146_vv {int current_hps_sync; int current_hps_source; int * standard; TYPE_2__ video_q; } ;
struct saa7146_dev {TYPE_1__* ext_vv_data; } ;
struct TYPE_4__ {int * stds; } ;


 int INIT_LIST_HEAD (int *) ;
 int SAA7146_HPS_SOURCE_PORT_A ;
 int SAA7146_HPS_SYNC_PORT_A ;
 int init_timer (TYPE_3__*) ;
 int saa7146_buffer_timeout ;

__attribute__((used)) static void video_init(struct saa7146_dev *dev, struct saa7146_vv *vv)
{
 INIT_LIST_HEAD(&vv->video_q.queue);

 init_timer(&vv->video_q.timeout);
 vv->video_q.timeout.function = saa7146_buffer_timeout;
 vv->video_q.timeout.data = (unsigned long)(&vv->video_q);
 vv->video_q.dev = dev;


 vv->standard = &dev->ext_vv_data->stds[0];


 vv->current_hps_source = SAA7146_HPS_SOURCE_PORT_A;
 vv->current_hps_sync = SAA7146_HPS_SYNC_PORT_A;
}
