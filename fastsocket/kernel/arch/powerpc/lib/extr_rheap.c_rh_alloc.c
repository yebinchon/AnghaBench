
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int alignment; } ;
typedef TYPE_1__ rh_info_t ;


 unsigned long rh_alloc_align (TYPE_1__*,int,int ,char const*) ;

unsigned long rh_alloc(rh_info_t * info, int size, const char *owner)
{
 return rh_alloc_align(info, size, info->alignment, owner);
}
