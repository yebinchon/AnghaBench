
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_cam_entry {scalar_t__ open_count; int port; int pdev; } ;


 int DBG (char*) ;
 int EBUSY ;
 int EINVAL ;
 int IEEE1284_MODE_COMPAT ;
 int PARPORT_CONTROL_INIT ;
 int PARPORT_CONTROL_SELECT ;
 scalar_t__ parport_claim (int ) ;
 int parport_data_forward (int ) ;
 int parport_negotiate (int ,int ) ;
 int parport_write_control (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int cpia_pp_open(void *privdata)
{
 struct pp_cam_entry *cam = (struct pp_cam_entry *)privdata;

 if (cam == ((void*)0))
  return -EINVAL;

 if(cam->open_count == 0) {
  if (parport_claim(cam->pdev)) {
   DBG("failed to claim the port\n");
   return -EBUSY;
  }
  parport_negotiate(cam->port, IEEE1284_MODE_COMPAT);
  parport_data_forward(cam->port);
  parport_write_control(cam->port, PARPORT_CONTROL_SELECT);
  udelay(50);
  parport_write_control(cam->port,
          PARPORT_CONTROL_SELECT
          | PARPORT_CONTROL_INIT);
 }

 ++cam->open_count;

 return 0;
}
