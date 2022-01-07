
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_cam_entry {int port; } ;


 int IEEE1284_MODE_COMPAT ;
 int parport_negotiate (int ,int ) ;

__attribute__((used)) static void EndTransferMode(struct pp_cam_entry *cam)
{
 parport_negotiate(cam->port, IEEE1284_MODE_COMPAT);
}
