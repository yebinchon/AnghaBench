
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int private_data; } ;


 int ENODEV ;
 scalar_t__ erst_disable ;
 int erst_get_record_id_begin (int*) ;
 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int erst_dbg_open(struct inode *inode, struct file *file)
{
 int rc, *pos;

 if (erst_disable)
  return -ENODEV;

 pos = (int *)&file->private_data;

 rc = erst_get_record_id_begin(pos);
 if (rc)
  return rc;

 return nonseekable_open(inode, file);
}
