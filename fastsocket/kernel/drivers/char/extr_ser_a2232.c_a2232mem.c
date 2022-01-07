
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct a2232memory {int dummy; } ;
struct TYPE_3__ {int start; } ;
struct TYPE_4__ {TYPE_1__ resource; } ;


 scalar_t__ ZTWO_VADDR (int ) ;
 TYPE_2__** zd_a2232 ;

__attribute__((used)) static inline volatile struct a2232memory *a2232mem(unsigned int board)
{
 return (volatile struct a2232memory *)ZTWO_VADDR(zd_a2232[board]->resource.start);
}
