
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ar4; } ;
struct TYPE_5__ {TYPE_1__ mm_segment; } ;
struct TYPE_6__ {TYPE_2__ thread; } ;


 scalar_t__ HOME_SPACE_MODE ;
 TYPE_3__* current ;
 scalar_t__ user_mode ;

__attribute__((used)) static inline int user_space_fault(unsigned long trans_exc_code)
{




 trans_exc_code &= 3;
 if (trans_exc_code == 2)

  return current->thread.mm_segment.ar4;
 if (user_mode == HOME_SPACE_MODE)

  return trans_exc_code == 3;






 return trans_exc_code != 3;
}
