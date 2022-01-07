
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {TYPE_1__* private_data; } ;
struct TYPE_5__ {int buffer_len; scalar_t__ buffer; } ;
typedef TYPE_1__ fnic_dbgfs_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int fnic_get_trace_data (TYPE_1__*) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int memset (void*,int ,int) ;
 int trace_max_pages ;
 scalar_t__ vmalloc (int) ;

__attribute__((used)) static int fnic_trace_debugfs_open(struct inode *inode,
      struct file *file)
{
 fnic_dbgfs_t *fnic_dbg_prt;
 fnic_dbg_prt = kzalloc(sizeof(fnic_dbgfs_t), GFP_KERNEL);
 if (!fnic_dbg_prt)
  return -ENOMEM;

 fnic_dbg_prt->buffer = vmalloc((3*(trace_max_pages * PAGE_SIZE)));
 if (!fnic_dbg_prt->buffer) {
  kfree(fnic_dbg_prt);
  return -ENOMEM;
 }
 memset((void *)fnic_dbg_prt->buffer, 0,
     (3*(trace_max_pages * PAGE_SIZE)));
 fnic_dbg_prt->buffer_len = fnic_get_trace_data(fnic_dbg_prt);
 file->private_data = fnic_dbg_prt;
 return 0;
}
