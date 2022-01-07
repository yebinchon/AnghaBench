
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int complete; } ;
struct dm_exception {void* new_chunk; void* old_chunk; } ;
typedef void* chunk_t ;


 int ENOMEM ;
 struct dm_exception* alloc_completed_exception () ;
 int dm_insert_exception (int *,struct dm_exception*) ;

__attribute__((used)) static int dm_add_exception(void *context, chunk_t old, chunk_t new)
{
 struct dm_snapshot *s = context;
 struct dm_exception *e;

 e = alloc_completed_exception();
 if (!e)
  return -ENOMEM;

 e->old_chunk = old;


 e->new_chunk = new;

 dm_insert_exception(&s->complete, e);

 return 0;
}
