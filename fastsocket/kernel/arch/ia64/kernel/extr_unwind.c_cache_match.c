
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_script {unsigned long ip; unsigned long pr_val; unsigned long pr_mask; int lock; } ;


 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static inline long
cache_match (struct unw_script *script, unsigned long ip, unsigned long pr)
{
 read_lock(&script->lock);
 if (ip == script->ip && ((pr ^ script->pr_val) & script->pr_mask) == 0)

  return 1;
 read_unlock(&script->lock);
 return 0;
}
