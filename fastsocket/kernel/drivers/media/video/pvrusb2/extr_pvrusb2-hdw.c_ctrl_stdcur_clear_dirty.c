
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_1__* hdw; } ;
struct TYPE_2__ {scalar_t__ std_dirty; } ;



__attribute__((used)) static void ctrl_stdcur_clear_dirty(struct pvr2_ctrl *cptr)
{
 cptr->hdw->std_dirty = 0;
}
