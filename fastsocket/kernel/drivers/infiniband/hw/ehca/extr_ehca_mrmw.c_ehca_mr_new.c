
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_mr {int mrlock; } ;


 int GFP_KERNEL ;
 int ehca_gen_err (char*) ;
 struct ehca_mr* kmem_cache_zalloc (int ,int ) ;
 int mr_cache ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct ehca_mr *ehca_mr_new(void)
{
 struct ehca_mr *me;

 me = kmem_cache_zalloc(mr_cache, GFP_KERNEL);
 if (me)
  spin_lock_init(&me->mrlock);
 else
  ehca_gen_err("alloc failed");

 return me;
}
