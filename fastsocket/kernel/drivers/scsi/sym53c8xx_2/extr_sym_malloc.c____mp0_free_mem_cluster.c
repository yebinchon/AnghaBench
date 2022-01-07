
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* m_pool_p ;
struct TYPE_3__ {int nump; } ;


 int sym_free_mem_cluster (void*) ;

__attribute__((used)) static void ___mp0_free_mem_cluster(m_pool_p mp, void *m)
{
 sym_free_mem_cluster(m);
 --mp->nump;
}
