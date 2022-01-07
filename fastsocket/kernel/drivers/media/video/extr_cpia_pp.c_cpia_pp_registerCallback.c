
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_cam_entry {void (* cb_func ) (void*) ;int cb_task; void* cb_data; TYPE_1__* port; } ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int INIT_WORK (int *,int ) ;
 scalar_t__ PARPORT_IRQ_NONE ;
 int cpia_pp_run_callback ;

__attribute__((used)) static int cpia_pp_registerCallback(void *privdata, void (*cb)(void *cbdata), void *cbdata)
{
 struct pp_cam_entry *cam = privdata;
 int retval = 0;

 if(cam->port->irq != PARPORT_IRQ_NONE) {
  cam->cb_func = cb;
  cam->cb_data = cbdata;
  INIT_WORK(&cam->cb_task, cpia_pp_run_callback);
 } else {
  retval = -1;
 }
 return retval;
}
