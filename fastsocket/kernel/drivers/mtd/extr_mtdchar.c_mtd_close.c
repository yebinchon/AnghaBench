
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int (* sync ) (struct mtd_info*) ;} ;
struct mtd_file_info {struct mtd_info* mtd; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct mtd_file_info* private_data; } ;


 int DEBUG (int ,char*) ;
 int FMODE_WRITE ;
 int MTD_DEBUG_LEVEL0 ;
 int kfree (struct mtd_file_info*) ;
 int put_mtd_device (struct mtd_info*) ;
 int stub1 (struct mtd_info*) ;

__attribute__((used)) static int mtd_close(struct inode *inode, struct file *file)
{
 struct mtd_file_info *mfi = file->private_data;
 struct mtd_info *mtd = mfi->mtd;

 DEBUG(MTD_DEBUG_LEVEL0, "MTD_close\n");


 if ((file->f_mode & FMODE_WRITE) && mtd->sync)
  mtd->sync(mtd);

 put_mtd_device(mtd);
 file->private_data = ((void*)0);
 kfree(mfi);

 return 0;
}
