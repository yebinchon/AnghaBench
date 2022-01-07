
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct uvc_control {TYPE_1__ info; int * uvc_data; } ;
typedef int __u8 ;



__attribute__((used)) static inline __u8 *uvc_ctrl_data(struct uvc_control *ctrl, int id)
{
 return ctrl->uvc_data + id * ctrl->info.size;
}
