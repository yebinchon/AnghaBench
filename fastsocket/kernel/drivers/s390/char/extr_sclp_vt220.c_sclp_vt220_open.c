
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int count; scalar_t__ low_latency; int * driver_data; } ;
struct file {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SCLP_VT220_BUF_SIZE ;
 int * kmalloc (int ,int ) ;
 struct tty_struct* sclp_vt220_tty ;

__attribute__((used)) static int
sclp_vt220_open(struct tty_struct *tty, struct file *filp)
{
 if (tty->count == 1) {
  sclp_vt220_tty = tty;
  tty->driver_data = kmalloc(SCLP_VT220_BUF_SIZE, GFP_KERNEL);
  if (tty->driver_data == ((void*)0))
   return -ENOMEM;
  tty->low_latency = 0;
 }
 return 0;
}
