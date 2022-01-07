
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;


 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int u32_array_open(struct inode *inode, struct file *file)
{
 file->private_data = ((void*)0);
 return nonseekable_open(inode, file);
}
