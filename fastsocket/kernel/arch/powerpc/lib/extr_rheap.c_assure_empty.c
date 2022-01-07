
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int empty_slots; int max_blocks; } ;
typedef TYPE_1__ rh_info_t ;


 int EINVAL ;
 int grow (TYPE_1__*,int) ;

__attribute__((used)) static int assure_empty(rh_info_t * info, int slots)
{
 int max_blocks;


 if (slots >= 4)
  return -EINVAL;


 if (info->empty_slots >= slots)
  return 0;


 max_blocks = ((info->max_blocks + slots) + 15) & ~15;

 return grow(info, max_blocks);
}
