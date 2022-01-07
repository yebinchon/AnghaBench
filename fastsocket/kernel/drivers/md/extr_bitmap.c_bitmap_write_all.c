
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file_pages; scalar_t__ file; int filemap; } ;
struct bitmap {scalar_t__ allclean; TYPE_1__ storage; } ;


 int BITMAP_PAGE_NEEDWRITE ;
 int set_page_attr (struct bitmap*,int,int ) ;

void bitmap_write_all(struct bitmap *bitmap)
{



 int i;

 if (!bitmap || !bitmap->storage.filemap)
  return;
 if (bitmap->storage.file)

  return;

 for (i = 0; i < bitmap->storage.file_pages; i++)
  set_page_attr(bitmap, i,
         BITMAP_PAGE_NEEDWRITE);
 bitmap->allclean = 0;
}
