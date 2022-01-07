
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ghes_estatus_cache {int dummy; } ;


 int GHES_ESTATUS_CACHE_LEN (int ) ;
 int GHES_ESTATUS_FROM_CACHE (struct ghes_estatus_cache*) ;
 int apei_estatus_len (int ) ;
 int atomic_dec (int *) ;
 int gen_pool_free (int ,unsigned long,int ) ;
 int ghes_estatus_cache_alloced ;
 int ghes_estatus_pool ;

__attribute__((used)) static void ghes_estatus_cache_free(struct ghes_estatus_cache *cache)
{
 u32 len;

 len = apei_estatus_len(GHES_ESTATUS_FROM_CACHE(cache));
 len = GHES_ESTATUS_CACHE_LEN(len);
 gen_pool_free(ghes_estatus_pool, (unsigned long)cache, len);
 atomic_dec(&ghes_estatus_cache_alloced);
}
