
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cram {int f_pos; int i_private; } ;
struct inode {int i_private; } ;
struct file {struct rsxx_cram* private_data; int f_pos; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct rsxx_cram* kzalloc (int,int ) ;

__attribute__((used)) static int rsxx_cram_open(struct inode *inode, struct file *file)
{
 struct rsxx_cram *info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->i_private = inode->i_private;
 info->f_pos = file->f_pos;
 file->private_data = info;

 return 0;
}
