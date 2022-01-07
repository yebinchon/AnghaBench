
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {struct b3dfg_dev* private_data; } ;
struct b3dfg_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int disable_transmission (struct b3dfg_dev*) ;

__attribute__((used)) static int b3dfg_release(struct inode *inode, struct file *filp)
{
 struct b3dfg_dev *fgdev = filp->private_data;
 dev_dbg(&fgdev->pdev->dev, "release\n");
 disable_transmission(fgdev);
 return 0;
}
