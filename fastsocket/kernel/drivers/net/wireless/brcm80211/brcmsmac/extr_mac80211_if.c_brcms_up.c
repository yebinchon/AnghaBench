
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_info {int wlc; TYPE_1__* pub; } ;
struct TYPE_2__ {scalar_t__ up; } ;


 int brcms_c_up (int ) ;

int brcms_up(struct brcms_info *wl)
{
 int error = 0;

 if (wl->pub->up)
  return 0;

 error = brcms_c_up(wl->wlc);

 return error;
}
