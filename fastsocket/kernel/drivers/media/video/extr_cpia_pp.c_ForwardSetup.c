
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_cam_entry {int port; } ;


 int DBG (char*) ;
 int IEEE1284_MODE_ECP ;
 int mdelay (int) ;
 int parport_negotiate (int ,int ) ;

__attribute__((used)) static int ForwardSetup(struct pp_cam_entry *cam)
{
 int retry;
 for(retry = 0; retry < 4; ++retry) {
  if(!parport_negotiate(cam->port, IEEE1284_MODE_ECP)) {
   break;
  }
  mdelay(10);
 }
 if(retry == 4) {
  DBG("Unable to negotiate IEEE1284 ECP Download mode\n");
  return -1;
 }
 return 0;
}
