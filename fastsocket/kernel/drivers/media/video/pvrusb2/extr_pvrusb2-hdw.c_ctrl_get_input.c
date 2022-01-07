
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_1__* hdw; } ;
struct TYPE_2__ {int input_val; } ;



__attribute__((used)) static int ctrl_get_input(struct pvr2_ctrl *cptr,int *vp)
{
 *vp = cptr->hdw->input_val;
 return 0;
}
