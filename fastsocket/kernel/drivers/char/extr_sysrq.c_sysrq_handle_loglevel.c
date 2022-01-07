
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int console_loglevel ;
 int printk (char*,int) ;

__attribute__((used)) static void sysrq_handle_loglevel(int key, struct tty_struct *tty)
{
 int i;
 i = key - '0';
 console_loglevel = 7;
 printk("Loglevel set to %d\n", i);
 console_loglevel = i;
}
