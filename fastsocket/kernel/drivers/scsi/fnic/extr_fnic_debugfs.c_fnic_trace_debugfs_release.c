
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {TYPE_1__* private_data; } ;
struct TYPE_3__ {int buffer; } ;
typedef TYPE_1__ fnic_dbgfs_t ;


 int kfree (TYPE_1__*) ;
 int vfree (int ) ;

__attribute__((used)) static int fnic_trace_debugfs_release(struct inode *inode,
       struct file *file)
{
 fnic_dbgfs_t *fnic_dbg_prt = file->private_data;

 vfree(fnic_dbg_prt->buffer);
 kfree(fnic_dbg_prt);
 return 0;
}
