
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct bfad_debug_info* private_data; } ;
struct bfad_debug_info {scalar_t__ debug_buffer; } ;


 int kfree (struct bfad_debug_info*) ;
 int vfree (scalar_t__) ;

__attribute__((used)) static int
bfad_debugfs_release_fwtrc(struct inode *inode, struct file *file)
{
 struct bfad_debug_info *fw_debug = file->private_data;

 if (!fw_debug)
  return 0;

 if (fw_debug->debug_buffer)
  vfree(fw_debug->debug_buffer);

 file->private_data = ((void*)0);
 kfree(fw_debug);
 return 0;
}
