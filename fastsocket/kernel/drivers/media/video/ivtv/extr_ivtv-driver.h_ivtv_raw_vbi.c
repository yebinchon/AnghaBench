
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ in; } ;
struct ivtv {TYPE_2__ vbi; } ;


 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;

__attribute__((used)) static inline int ivtv_raw_vbi(const struct ivtv *itv)
{
 return itv->vbi.in.type == V4L2_BUF_TYPE_VBI_CAPTURE;
}
