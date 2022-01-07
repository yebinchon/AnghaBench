
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_fh {scalar_t__ state; } ;


 scalar_t__ UVC_HANDLE_ACTIVE ;

__attribute__((used)) static int uvc_has_privileges(struct uvc_fh *handle)
{
 return handle->state == UVC_HANDLE_ACTIVE;
}
