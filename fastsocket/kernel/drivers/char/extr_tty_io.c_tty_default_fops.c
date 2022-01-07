
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_operations {int dummy; } ;


 struct file_operations tty_fops ;

void tty_default_fops(struct file_operations *fops)
{
 *fops = tty_fops;
}
