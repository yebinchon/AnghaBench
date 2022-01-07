
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zc0301_device {int * frame_current; scalar_t__ nbuffers; TYPE_1__* frame; } ;
struct TYPE_2__ {int bufmem; } ;


 int vfree (int ) ;

__attribute__((used)) static void zc0301_release_buffers(struct zc0301_device* cam)
{
 if (cam->nbuffers) {
  vfree(cam->frame[0].bufmem);
  cam->nbuffers = 0;
 }
 cam->frame_current = ((void*)0);
}
