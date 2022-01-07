
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_mbuf {int size; int frames; int* offsets; } ;
struct camera_data {int frame_size; int num_frames; } ;


 int memset (struct video_mbuf*,int ,int) ;

__attribute__((used)) static int ioctl_get_mbuf(void *arg, struct camera_data *cam)
{
 struct video_mbuf *vm;
 int i;
 vm = arg;

 memset(vm, 0, sizeof(*vm));
 vm->size = cam->frame_size*cam->num_frames;
 vm->frames = cam->num_frames;
 for (i = 0; i < cam->num_frames; i++)
  vm->offsets[i] = cam->frame_size * i;

 return 0;
}
