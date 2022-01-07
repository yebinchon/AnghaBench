
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_ldisc_ops {int dummy; } ;
struct tty_ldisc {int users; struct tty_ldisc_ops* ops; } ;


 int EINVAL ;
 int ENOMEM ;
 struct tty_ldisc* ERR_CAST (struct tty_ldisc_ops*) ;
 struct tty_ldisc* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct tty_ldisc_ops*) ;
 int NR_LDISCS ;
 int N_TTY ;
 int atomic_set (int *,int) ;
 struct tty_ldisc_ops* get_ldops (int) ;
 struct tty_ldisc* kmalloc (int,int ) ;
 int put_ldops (struct tty_ldisc_ops*) ;
 int request_module (char*,int) ;

__attribute__((used)) static struct tty_ldisc *tty_ldisc_get(int disc)
{
 struct tty_ldisc *ld;
 struct tty_ldisc_ops *ldops;

 if (disc < N_TTY || disc >= NR_LDISCS)
  return ERR_PTR(-EINVAL);





 ldops = get_ldops(disc);
 if (IS_ERR(ldops)) {
  request_module("tty-ldisc-%d", disc);
  ldops = get_ldops(disc);
  if (IS_ERR(ldops))
   return ERR_CAST(ldops);
 }

 ld = kmalloc(sizeof(struct tty_ldisc), GFP_KERNEL);
 if (ld == ((void*)0)) {
  put_ldops(ldops);
  return ERR_PTR(-ENOMEM);
 }

 ld->ops = ldops;
 atomic_set(&ld->users, 1);
 return ld;
}
