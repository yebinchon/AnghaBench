
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int * f_op; } ;


 int hung_up_tty_fops ;

int tty_hung_up_p(struct file *filp)
{
 return (filp->f_op == &hung_up_tty_fops);
}
