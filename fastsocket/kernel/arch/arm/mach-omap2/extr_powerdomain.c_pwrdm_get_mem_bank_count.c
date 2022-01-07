
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int banks; } ;


 int EINVAL ;

int pwrdm_get_mem_bank_count(struct powerdomain *pwrdm)
{
 if (!pwrdm)
  return -EINVAL;

 return pwrdm->banks;
}
