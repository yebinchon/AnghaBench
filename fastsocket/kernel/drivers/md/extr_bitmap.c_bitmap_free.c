
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long pages; struct bitmap_page* bp; } ;
struct bitmap_page {struct bitmap_page* map; int hijacked; TYPE_1__ counts; int storage; int pending_writes; int write_wait; } ;
struct bitmap {struct bitmap* map; int hijacked; TYPE_1__ counts; int storage; int pending_writes; int write_wait; } ;


 scalar_t__ atomic_read (int *) ;
 int bitmap_file_unmap (int *) ;
 int kfree (struct bitmap_page*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void bitmap_free(struct bitmap *bitmap)
{
 unsigned long k, pages;
 struct bitmap_page *bp;

 if (!bitmap)
  return;


 wait_event(bitmap->write_wait,
     atomic_read(&bitmap->pending_writes) == 0);


 bitmap_file_unmap(&bitmap->storage);

 bp = bitmap->counts.bp;
 pages = bitmap->counts.pages;



 if (bp)
  for (k = 0; k < pages; k++)
   if (bp[k].map && !bp[k].hijacked)
    kfree(bp[k].map);
 kfree(bp);
 kfree(bitmap);
}
