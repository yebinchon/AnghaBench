
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int i8k_proc_show ;
 int single_open (struct file*,int ,int *) ;

__attribute__((used)) static int i8k_open_fs(struct inode *inode, struct file *file)
{
 return single_open(file, i8k_proc_show, ((void*)0));
}
