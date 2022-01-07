
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_cam_entry {int streaming; int port; scalar_t__ stream_irq; scalar_t__ image_ready; } ;


 int DBG (char*) ;
 int cpia_parport_enable_irq (int ) ;

__attribute__((used)) static int cpia_pp_streamStart(void *privdata)
{
 struct pp_cam_entry *cam = privdata;
 DBG("\n");
 cam->streaming=1;
 cam->image_ready=0;

 if(cam->stream_irq) cpia_parport_enable_irq(cam->port);
 return 0;
}
