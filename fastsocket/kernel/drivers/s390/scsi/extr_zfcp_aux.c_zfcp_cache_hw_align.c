
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 struct kmem_cache* kmem_cache_create (char const*,unsigned long,int ,int ,int *) ;
 int roundup_pow_of_two (unsigned long) ;

__attribute__((used)) static struct kmem_cache *zfcp_cache_hw_align(const char *name,
           unsigned long size)
{
 return kmem_cache_create(name, size, roundup_pow_of_two(size), 0, ((void*)0));
}
