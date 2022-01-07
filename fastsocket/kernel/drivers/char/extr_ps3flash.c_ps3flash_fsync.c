
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dentry {int dummy; } ;


 int ps3flash_dev ;
 int ps3flash_writeback (int ) ;

__attribute__((used)) static int ps3flash_fsync(struct file *file, struct dentry *dentry,
     int datasync)
{
 return ps3flash_writeback(ps3flash_dev);
}
