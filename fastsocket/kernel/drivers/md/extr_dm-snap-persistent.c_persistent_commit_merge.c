
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore {int current_committed; int current_area; scalar_t__ next_free; } ;
struct dm_exception_store {int dummy; } ;


 int BUG_ON (int) ;
 int WRITE_FLUSH_FUA ;
 int area_io (struct pstore*,int ) ;
 scalar_t__ area_location (struct pstore*,int ) ;
 int clear_exception (struct pstore*,int) ;
 struct pstore* get_info (struct dm_exception_store*) ;

__attribute__((used)) static int persistent_commit_merge(struct dm_exception_store *store,
       int nr_merged)
{
 int r, i;
 struct pstore *ps = get_info(store);

 BUG_ON(nr_merged > ps->current_committed);

 for (i = 0; i < nr_merged; i++)
  clear_exception(ps, ps->current_committed - 1 - i);

 r = area_io(ps, WRITE_FLUSH_FUA);
 if (r < 0)
  return r;

 ps->current_committed -= nr_merged;
 ps->next_free = area_location(ps, ps->current_area) +
   ps->current_committed + 1;

 return 0;
}
