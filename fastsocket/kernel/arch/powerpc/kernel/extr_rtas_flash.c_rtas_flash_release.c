
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtas_update_flash_t {scalar_t__ status; int * flist; } ;
struct proc_dir_entry {int count; scalar_t__ data; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {int d_inode; } ;


 scalar_t__ FLASH_AUTH ;
 scalar_t__ FLASH_IMG_READY ;
 struct proc_dir_entry* PDE (int ) ;
 int atomic_dec (int *) ;
 scalar_t__ flash_list_valid (int *) ;
 int free_flash_list (int *) ;
 int * rtas_firmware_flash_list ;

__attribute__((used)) static int rtas_flash_release(struct inode *inode, struct file *file)
{
 struct proc_dir_entry *dp = PDE(file->f_path.dentry->d_inode);
 struct rtas_update_flash_t *uf;

 uf = (struct rtas_update_flash_t *) dp->data;
 if (uf->flist) {


  if (rtas_firmware_flash_list) {
   free_flash_list(rtas_firmware_flash_list);
   rtas_firmware_flash_list = ((void*)0);
  }

  if (uf->status != FLASH_AUTH)
   uf->status = flash_list_valid(uf->flist);

  if (uf->status == FLASH_IMG_READY)
   rtas_firmware_flash_list = uf->flist;
  else
   free_flash_list(uf->flist);

  uf->flist = ((void*)0);
 }

 atomic_dec(&dp->count);
 return 0;
}
