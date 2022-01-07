
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xrcd_table_entry {int node; } ;
struct inode {int dummy; } ;
struct ib_uverbs_device {int xrcd_tree; } ;


 int iput (struct inode*) ;
 int kfree (struct xrcd_table_entry*) ;
 int rb_erase (int *,int *) ;
 struct xrcd_table_entry* xrcd_table_search (struct ib_uverbs_device*,struct inode*) ;

__attribute__((used)) static void xrcd_table_delete(struct ib_uverbs_device *dev,
         struct inode *inode)
{
 struct xrcd_table_entry *entry;

 entry = xrcd_table_search(dev, inode);
 if (entry) {
  iput(inode);
  rb_erase(&entry->node, &dev->xrcd_tree);
  kfree(entry);
 }
}
