
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {scalar_t__ f_pos; TYPE_1__* private_data; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ buffer_len; } ;
typedef TYPE_1__ fnic_dbgfs_t ;


 scalar_t__ EINVAL ;

__attribute__((used)) static loff_t fnic_trace_debugfs_lseek(struct file *file,
     loff_t offset,
     int howto)
{
 fnic_dbgfs_t *fnic_dbg_prt = file->private_data;
 loff_t pos = -1;

 switch (howto) {
 case 0:
  pos = offset;
  break;
 case 1:
  pos = file->f_pos + offset;
  break;
 case 2:
  pos = fnic_dbg_prt->buffer_len - offset;
 }
 return (pos < 0 || pos > fnic_dbg_prt->buffer_len) ?
     -EINVAL : (file->f_pos = pos);
}
