
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int show_spu_loadavg ;
 int single_open (struct file*,int ,int *) ;

__attribute__((used)) static int spu_loadavg_open(struct inode *inode, struct file *file)
{
 return single_open(file, show_spu_loadavg, ((void*)0));
}
