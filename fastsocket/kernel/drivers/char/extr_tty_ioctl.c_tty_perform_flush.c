
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* flush_buffer ) (struct tty_struct*) ;} ;


 int EINVAL ;



 int stub1 (struct tty_struct*) ;
 int stub2 (struct tty_struct*) ;
 int tty_check_change (struct tty_struct*) ;
 int tty_driver_flush_buffer (struct tty_struct*) ;
 int tty_ldisc_deref (struct tty_ldisc*) ;
 struct tty_ldisc* tty_ldisc_ref_wait (struct tty_struct*) ;

int tty_perform_flush(struct tty_struct *tty, unsigned long arg)
{
 struct tty_ldisc *ld;
 int retval = tty_check_change(tty);
 if (retval)
  return retval;

 ld = tty_ldisc_ref_wait(tty);
 switch (arg) {
 case 130:
  if (ld && ld->ops->flush_buffer)
   ld->ops->flush_buffer(tty);
  break;
 case 129:
  if (ld && ld->ops->flush_buffer)
   ld->ops->flush_buffer(tty);

 case 128:
  tty_driver_flush_buffer(tty);
  break;
 default:
  tty_ldisc_deref(ld);
  return -EINVAL;
 }
 tty_ldisc_deref(ld);
 return 0;
}
