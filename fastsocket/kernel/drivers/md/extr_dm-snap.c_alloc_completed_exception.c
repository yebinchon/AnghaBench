
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception {int dummy; } ;


 int GFP_ATOMIC ;
 int GFP_NOIO ;
 int exception_cache ;
 struct dm_exception* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct dm_exception *alloc_completed_exception(void)
{
 struct dm_exception *e;

 e = kmem_cache_alloc(exception_cache, GFP_NOIO);
 if (!e)
  e = kmem_cache_alloc(exception_cache, GFP_ATOMIC);

 return e;
}
