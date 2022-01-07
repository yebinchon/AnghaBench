
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtas_validate_flash_t {scalar_t__ status; int buf_size; } ;
struct proc_dir_entry {int count; scalar_t__ data; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {int d_inode; } ;


 struct proc_dir_entry* PDE (int ) ;
 int VALIDATE_BUF_SIZE ;
 scalar_t__ VALIDATE_READY ;
 int atomic_dec (int *) ;
 int validate_flash (struct rtas_validate_flash_t*) ;

__attribute__((used)) static int validate_flash_release(struct inode *inode, struct file *file)
{
 struct proc_dir_entry *dp = PDE(file->f_path.dentry->d_inode);
 struct rtas_validate_flash_t *args_buf;

 args_buf = (struct rtas_validate_flash_t *) dp->data;

 if (args_buf->status == VALIDATE_READY) {
  args_buf->buf_size = VALIDATE_BUF_SIZE;
  validate_flash(args_buf);
 }


 atomic_dec(&dp->count);

 return 0;
}
