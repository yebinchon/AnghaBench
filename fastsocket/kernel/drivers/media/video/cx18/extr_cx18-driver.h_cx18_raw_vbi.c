
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ in; } ;
struct cx18 {TYPE_2__ vbi; } ;


 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;

__attribute__((used)) static inline int cx18_raw_vbi(const struct cx18 *cx)
{
 return cx->vbi.in.type == V4L2_BUF_TYPE_VBI_CAPTURE;
}
