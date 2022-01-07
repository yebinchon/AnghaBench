
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int i_private; } ;


 int qperf_show ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int qperf_seq_open(struct inode *inode, struct file *filp)
{
 return single_open(filp, qperf_show,
      filp->f_path.dentry->d_inode->i_private);
}
