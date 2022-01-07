
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long file_pages; scalar_t__ file; int * filemap; } ;
struct bitmap {int flags; int mddev; int pending_writes; int write_wait; TYPE_1__ storage; } ;


 int BITMAP_PAGE_DIRTY ;
 int BITMAP_PAGE_NEEDWRITE ;
 int BITMAP_PAGE_PENDING ;
 int BITMAP_STALE ;
 int BITMAP_WRITE_ERROR ;
 scalar_t__ atomic_read (int *) ;
 int bitmap_file_kick (struct bitmap*) ;
 int clear_page_attr (struct bitmap*,unsigned long,int ) ;
 int md_super_wait (int ) ;
 int test_and_clear_page_attr (struct bitmap*,unsigned long,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event (int ,int) ;
 int write_page (struct bitmap*,int ,int ) ;

void bitmap_unplug(struct bitmap *bitmap)
{
 unsigned long i;
 int dirty, need_write;
 int wait = 0;

 if (!bitmap || !bitmap->storage.filemap ||
     test_bit(BITMAP_STALE, &bitmap->flags))
  return;



 for (i = 0; i < bitmap->storage.file_pages; i++) {
  if (!bitmap->storage.filemap)
   return;
  dirty = test_and_clear_page_attr(bitmap, i, BITMAP_PAGE_DIRTY);
  need_write = test_and_clear_page_attr(bitmap, i,
            BITMAP_PAGE_NEEDWRITE);
  if (dirty || need_write) {
   clear_page_attr(bitmap, i, BITMAP_PAGE_PENDING);
   write_page(bitmap, bitmap->storage.filemap[i], 0);
  }
  if (dirty)
   wait = 1;
 }
 if (wait) {
  if (bitmap->storage.file)
   wait_event(bitmap->write_wait,
       atomic_read(&bitmap->pending_writes)==0);
  else
   md_super_wait(bitmap->mddev);
 }
 if (test_bit(BITMAP_WRITE_ERROR, &bitmap->flags))
  bitmap_file_kick(bitmap);
}
