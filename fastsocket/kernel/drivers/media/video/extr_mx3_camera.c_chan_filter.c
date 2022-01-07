
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mx3_camera_pdata {scalar_t__ dma_dev; } ;
struct dma_chan_request {scalar_t__ id; TYPE_4__* mx3_cam; } ;
struct dma_chan {scalar_t__ chan_id; TYPE_5__* device; } ;
struct TYPE_10__ {scalar_t__ dev; } ;
struct TYPE_7__ {TYPE_1__* dev; } ;
struct TYPE_8__ {TYPE_2__ v4l2_dev; } ;
struct TYPE_9__ {TYPE_3__ soc_host; } ;
struct TYPE_6__ {struct mx3_camera_pdata* platform_data; } ;



__attribute__((used)) static bool chan_filter(struct dma_chan *chan, void *arg)
{
 struct dma_chan_request *rq = arg;
 struct mx3_camera_pdata *pdata;

 if (!rq)
  return 0;

 pdata = rq->mx3_cam->soc_host.v4l2_dev.dev->platform_data;

 return rq->id == chan->chan_id &&
  pdata->dma_dev == chan->device->dev;
}
