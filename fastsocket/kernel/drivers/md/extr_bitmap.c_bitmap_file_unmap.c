
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int i_mapping; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct bitmap_storage {int file_pages; struct page** filemap_attr; struct page* sb_page; struct page** filemap; struct file* file; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int fput (struct file*) ;
 int free_buffers (struct page*) ;
 int invalidate_mapping_pages (int ,int ,int) ;
 int kfree (struct page**) ;

__attribute__((used)) static void bitmap_file_unmap(struct bitmap_storage *store)
{
 struct page **map, *sb_page;
 int pages;
 struct file *file;

 file = store->file;
 map = store->filemap;
 pages = store->file_pages;
 sb_page = store->sb_page;

 while (pages--)
  if (map[pages] != sb_page)
   free_buffers(map[pages]);
 kfree(map);
 kfree(store->filemap_attr);

 if (sb_page)
  free_buffers(sb_page);

 if (file) {
  struct inode *inode = file->f_path.dentry->d_inode;
  invalidate_mapping_pages(inode->i_mapping, 0, -1);
  fput(file);
 }
}
