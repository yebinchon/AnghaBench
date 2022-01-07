
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ib_xrcd {int usecnt; struct inode* inode; } ;
struct ib_uverbs_device {int dummy; } ;


 int atomic_dec_and_test (int *) ;
 int ib_dealloc_xrcd (struct ib_xrcd*) ;
 int xrcd_table_delete (struct ib_uverbs_device*,struct inode*) ;

void ib_uverbs_dealloc_xrcd(struct ib_uverbs_device *dev,
       struct ib_xrcd *xrcd)
{
 struct inode *inode;

 inode = xrcd->inode;
 if (inode && !atomic_dec_and_test(&xrcd->usecnt))
  return;

 ib_dealloc_xrcd(xrcd);

 if (inode)
  xrcd_table_delete(dev, inode);
}
