
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __scm_alloc_rq () ;

__attribute__((used)) static int scm_alloc_rqs(unsigned int nrqs)
{
 int ret = 0;

 while (nrqs-- && !ret)
  ret = __scm_alloc_rq();

 return ret;
}
