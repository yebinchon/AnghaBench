
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct file {int dummy; } ;


 int ipw_hangup (struct tty_struct*) ;

__attribute__((used)) static void ipw_close(struct tty_struct *linux_tty, struct file *filp)
{
 ipw_hangup(linux_tty);
}
