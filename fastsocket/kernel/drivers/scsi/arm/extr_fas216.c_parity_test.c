
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {int parity_check; } ;
typedef TYPE_2__ FAS216_Info ;



__attribute__((used)) static int parity_test(FAS216_Info *info, int target)
{






 return info->device[target].parity_check;
}
