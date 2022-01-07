
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {scalar_t__ vc_mode; TYPE_1__* vc_sw; } ;
struct TYPE_2__ {int (* con_resize ) (struct vc_data*,int,int,int) ;} ;


 scalar_t__ KD_GRAPHICS ;
 int stub1 (struct vc_data*,int,int,int) ;

__attribute__((used)) static inline int resize_screen(struct vc_data *vc, int width, int height,
    int user)
{

 int err = 0;

 if (vc->vc_mode != KD_GRAPHICS && vc->vc_sw->con_resize)
  err = vc->vc_sw->con_resize(vc, width, height, user);

 return err;
}
