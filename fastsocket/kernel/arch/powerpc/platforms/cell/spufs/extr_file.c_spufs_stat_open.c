
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int i_ctx; } ;


 TYPE_1__* SPUFS_I (struct inode*) ;
 int single_open (struct file*,int ,int ) ;
 int spufs_show_stat ;

__attribute__((used)) static int spufs_stat_open(struct inode *inode, struct file *file)
{
 return single_open(file, spufs_show_stat, SPUFS_I(inode)->i_ctx);
}
