
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {int next_buf; int nbufs; scalar_t__ specframes; int flags; } ;


 int clear_bit (int,int *) ;

__attribute__((used)) static void cafe_reset_buffers(struct cafe_camera *cam)
{
 int i;

 cam->next_buf = -1;
 for (i = 0; i < cam->nbufs; i++)
  clear_bit(i, &cam->flags);
 cam->specframes = 0;
}
