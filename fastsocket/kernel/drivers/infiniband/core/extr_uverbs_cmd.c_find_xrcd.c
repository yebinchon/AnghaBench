
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xrcd_table_entry {struct ib_xrcd* xrcd; } ;
struct inode {int dummy; } ;
struct ib_xrcd {int dummy; } ;
struct ib_uverbs_device {int dummy; } ;


 struct xrcd_table_entry* xrcd_table_search (struct ib_uverbs_device*,struct inode*) ;

__attribute__((used)) static struct ib_xrcd *find_xrcd(struct ib_uverbs_device *dev, struct inode *inode)
{
 struct xrcd_table_entry *entry;

 entry = xrcd_table_search(dev, inode);
 if (!entry)
  return ((void*)0);

 return entry->xrcd;
}
