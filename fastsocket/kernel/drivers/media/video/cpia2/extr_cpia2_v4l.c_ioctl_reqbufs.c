
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {scalar_t__ type; scalar_t__ memory; int reserved; int count; } ;
struct camera_data {int num_frames; } ;


 int DBG (char*,int ,int ) ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int ioctl_reqbufs(void *arg,struct camera_data *cam)
{
 struct v4l2_requestbuffers *req = arg;

 if(req->type != V4L2_BUF_TYPE_VIDEO_CAPTURE ||
    req->memory != V4L2_MEMORY_MMAP)
  return -EINVAL;

 DBG("REQBUFS requested:%d returning:%d\n", req->count, cam->num_frames);
 req->count = cam->num_frames;
 memset(&req->reserved, 0, sizeof(req->reserved));

 return 0;
}
