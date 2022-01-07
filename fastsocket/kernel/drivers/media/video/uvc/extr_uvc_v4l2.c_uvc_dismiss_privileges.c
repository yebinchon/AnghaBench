
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_fh {scalar_t__ state; TYPE_1__* stream; } ;
struct TYPE_2__ {int active; } ;


 scalar_t__ UVC_HANDLE_ACTIVE ;
 scalar_t__ UVC_HANDLE_PASSIVE ;
 int atomic_dec (int *) ;

__attribute__((used)) static void uvc_dismiss_privileges(struct uvc_fh *handle)
{
 if (handle->state == UVC_HANDLE_ACTIVE)
  atomic_dec(&handle->stream->active);

 handle->state = UVC_HANDLE_PASSIVE;
}
