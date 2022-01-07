
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int count; int * driver_data; } ;
struct file {int dummy; } ;


 int kfree (int *) ;
 int * sclp_vt220_tty ;

__attribute__((used)) static void
sclp_vt220_close(struct tty_struct *tty, struct file *filp)
{
 if (tty->count == 1) {
  sclp_vt220_tty = ((void*)0);
  kfree(tty->driver_data);
  tty->driver_data = ((void*)0);
 }
}
