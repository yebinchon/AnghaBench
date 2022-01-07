
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_cam_entry {int port; scalar_t__ streaming; } ;


 int DBG (char*) ;
 int cpia_parport_disable_irq (int ) ;

__attribute__((used)) static int cpia_pp_streamStop(void *privdata)
{
 struct pp_cam_entry *cam = privdata;

 DBG("\n");
 cam->streaming=0;
 cpia_parport_disable_irq(cam->port);


 return 0;
}
