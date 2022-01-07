
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ low_latency; int * driver_data; } ;
struct file {int dummy; } ;


 struct tty_struct* sclp_tty ;

__attribute__((used)) static int
sclp_tty_open(struct tty_struct *tty, struct file *filp)
{
 sclp_tty = tty;
 tty->driver_data = ((void*)0);
 tty->low_latency = 0;
 return 0;
}
