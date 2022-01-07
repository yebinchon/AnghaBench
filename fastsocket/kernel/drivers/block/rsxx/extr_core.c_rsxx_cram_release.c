
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cram {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct rsxx_cram* private_data; } ;


 int kfree (struct rsxx_cram*) ;

__attribute__((used)) static int rsxx_cram_release(struct inode *inode, struct file *file)
{
 struct rsxx_cram *info = file->private_data;

 if (!info)
  return 0;

 kfree(info);
 file->private_data = ((void*)0);

 return 0;
}
