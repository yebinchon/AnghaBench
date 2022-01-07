
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_mw {int mwlock; } ;


 int GFP_KERNEL ;
 int ehca_gen_err (char*) ;
 struct ehca_mw* kmem_cache_zalloc (int ,int ) ;
 int mw_cache ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct ehca_mw *ehca_mw_new(void)
{
 struct ehca_mw *me;

 me = kmem_cache_zalloc(mw_cache, GFP_KERNEL);
 if (me)
  spin_lock_init(&me->mwlock);
 else
  ehca_gen_err("alloc failed");

 return me;
}
