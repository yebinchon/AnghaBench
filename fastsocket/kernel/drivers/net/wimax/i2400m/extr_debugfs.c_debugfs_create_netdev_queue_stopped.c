
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_file (char const*,int,struct dentry*,struct i2400m*,int *) ;
 int fops_netdev_queue_stopped ;

__attribute__((used)) static
struct dentry *debugfs_create_netdev_queue_stopped(
 const char *name, struct dentry *parent, struct i2400m *i2400m)
{
 return debugfs_create_file(name, 0400, parent, i2400m,
       &fops_netdev_queue_stopped);
}
