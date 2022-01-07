
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ivtv {TYPE_1__* streams; } ;
struct TYPE_2__ {int * vdev; } ;


 int ENOMEM ;
 int IVTV_MAX_STREAMS ;
 scalar_t__ ivtv_prep_dev (struct ivtv*,int) ;
 scalar_t__ ivtv_stream_alloc (TYPE_1__*) ;
 int ivtv_streams_cleanup (struct ivtv*,int ) ;

int ivtv_streams_setup(struct ivtv *itv)
{
 int type;


 for (type = 0; type < IVTV_MAX_STREAMS; type++) {

  if (ivtv_prep_dev(itv, type))
   break;

  if (itv->streams[type].vdev == ((void*)0))
   continue;


  if (ivtv_stream_alloc(&itv->streams[type]))
   break;
 }
 if (type == IVTV_MAX_STREAMS)
  return 0;


 ivtv_streams_cleanup(itv, 0);
 return -ENOMEM;
}
