
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gen_pool_free (int ,unsigned long,size_t) ;
 int tcm_pool ;

void tcm_free(void *addr, size_t len)
{
 gen_pool_free(tcm_pool, (unsigned long) addr, len);
}
