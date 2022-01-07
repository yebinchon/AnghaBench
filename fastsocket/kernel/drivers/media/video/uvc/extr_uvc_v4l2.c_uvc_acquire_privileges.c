
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_fh {scalar_t__ state; TYPE_1__* stream; } ;
struct TYPE_2__ {int active; } ;


 int EBUSY ;
 scalar_t__ UVC_HANDLE_ACTIVE ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;

__attribute__((used)) static int uvc_acquire_privileges(struct uvc_fh *handle)
{

 if (handle->state == UVC_HANDLE_ACTIVE)
  return 0;


 if (atomic_inc_return(&handle->stream->active) != 1) {
  atomic_dec(&handle->stream->active);
  return -EBUSY;
 }

 handle->state = UVC_HANDLE_ACTIVE;
 return 0;
}
