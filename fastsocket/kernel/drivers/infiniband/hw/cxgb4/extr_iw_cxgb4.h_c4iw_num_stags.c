
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* vr; } ;
struct c4iw_rdev {TYPE_3__ lldi; } ;
struct TYPE_4__ {int size; } ;
struct TYPE_5__ {TYPE_1__ stag; } ;


 scalar_t__ T4_MAX_NUM_STAG ;
 int min (int,int) ;

__attribute__((used)) static inline int c4iw_num_stags(struct c4iw_rdev *rdev)
{
 return min((int)T4_MAX_NUM_STAG, (int)(rdev->lldi.vr->stag.size >> 5));
}
