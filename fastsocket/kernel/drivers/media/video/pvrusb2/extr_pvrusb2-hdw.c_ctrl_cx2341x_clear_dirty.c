
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_1__* hdw; } ;
struct TYPE_2__ {scalar_t__ enc_unsafe_stale; scalar_t__ enc_stale; } ;



__attribute__((used)) static void ctrl_cx2341x_clear_dirty(struct pvr2_ctrl *cptr)
{
 cptr->hdw->enc_stale = 0;
 cptr->hdw->enc_unsafe_stale = 0;
}
