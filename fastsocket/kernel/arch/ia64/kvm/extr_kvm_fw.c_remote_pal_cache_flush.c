
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cache_flush_args {long status; int operation; int cache_type; int progress; } ;


 long ia64_pal_cache_flush (int ,int ,int *,int *) ;

__attribute__((used)) static void remote_pal_cache_flush(void *data)
{
 struct cache_flush_args *args = data;
 long status;
 u64 progress = args->progress;

 status = ia64_pal_cache_flush(args->cache_type, args->operation,
     &progress, ((void*)0));
 if (status != 0)
 args->status = status;
}
