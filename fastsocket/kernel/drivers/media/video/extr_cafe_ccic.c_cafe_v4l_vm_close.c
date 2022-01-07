
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {struct cafe_sio_buffer* vm_private_data; } ;
struct TYPE_3__ {int flags; } ;
struct cafe_sio_buffer {scalar_t__ mapcount; TYPE_2__* cam; TYPE_1__ v4lbuf; } ;
struct TYPE_4__ {int s_mutex; } ;


 int V4L2_BUF_FLAG_MAPPED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void cafe_v4l_vm_close(struct vm_area_struct *vma)
{
 struct cafe_sio_buffer *sbuf = vma->vm_private_data;

 mutex_lock(&sbuf->cam->s_mutex);
 sbuf->mapcount--;

 if (sbuf->mapcount == 0)
  sbuf->v4lbuf.flags &= ~V4L2_BUF_FLAG_MAPPED;
 mutex_unlock(&sbuf->cam->s_mutex);
}
