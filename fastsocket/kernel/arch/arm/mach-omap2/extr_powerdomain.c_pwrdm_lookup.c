
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int dummy; } ;


 struct powerdomain* _pwrdm_lookup (char const*) ;
 int pwrdm_rwlock ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

struct powerdomain *pwrdm_lookup(const char *name)
{
 struct powerdomain *pwrdm;
 unsigned long flags;

 if (!name)
  return ((void*)0);

 read_lock_irqsave(&pwrdm_rwlock, flags);
 pwrdm = _pwrdm_lookup(name);
 read_unlock_irqrestore(&pwrdm_rwlock, flags);

 return pwrdm;
}
