
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cam_data {TYPE_1__* frame; int * frame_buf; } ;
struct TYPE_2__ {int * data; } ;


 int CPIA_MAX_FRAME_SIZE ;
 int FRAME_NUM ;
 int rvfree (int *,int) ;

__attribute__((used)) static int free_frame_buf(struct cam_data *cam)
{
 int i;

 rvfree(cam->frame_buf, FRAME_NUM*CPIA_MAX_FRAME_SIZE);
 cam->frame_buf = ((void*)0);
 for (i=0; i < FRAME_NUM; i++)
  cam->frame[i].data = ((void*)0);

 return 0;
}
