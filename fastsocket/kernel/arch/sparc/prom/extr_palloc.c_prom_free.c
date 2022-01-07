
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* v2_dumb_mem_free ) (char*,unsigned int) ;} ;
struct TYPE_4__ {TYPE_1__ pv_v2devops; } ;


 scalar_t__ PROM_V0 ;
 scalar_t__ prom_vers ;
 TYPE_2__* romvec ;
 int stub1 (char*,unsigned int) ;

void
prom_free(char *vaddr, unsigned int num_bytes)
{
 if((prom_vers == PROM_V0) || (num_bytes == 0x0)) return;
 (*(romvec->pv_v2devops.v2_dumb_mem_free))(vaddr, num_bytes);
 return;
}
