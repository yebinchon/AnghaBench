
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_cam_entry {scalar_t__ open_count; int pdev; } ;


 int parport_release (int ) ;

__attribute__((used)) static int cpia_pp_close(void *privdata)
{
 struct pp_cam_entry *cam = privdata;
 if (--cam->open_count == 0) {
  parport_release(cam->pdev);
 }
 return 0;
}
