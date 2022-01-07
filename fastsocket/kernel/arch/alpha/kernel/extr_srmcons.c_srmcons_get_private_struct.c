
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srmcons_private {int timer; int lock; int * tty; } ;
typedef int DEFINE_SPINLOCK ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int init_timer (int *) ;
 struct srmcons_private* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
srmcons_get_private_struct(struct srmcons_private **ps)
{
 static struct srmcons_private *srmconsp = ((void*)0);
 static DEFINE_SPINLOCK(srmconsp_lock);
 unsigned long flags;
 int retval = 0;

 if (srmconsp == ((void*)0)) {
  srmconsp = kmalloc(sizeof(*srmconsp), GFP_KERNEL);
  spin_lock_irqsave(&srmconsp_lock, flags);

  if (srmconsp == ((void*)0))
   retval = -ENOMEM;
  else {
   srmconsp->tty = ((void*)0);
   spin_lock_init(&srmconsp->lock);
   init_timer(&srmconsp->timer);
  }

  spin_unlock_irqrestore(&srmconsp_lock, flags);
 }

 *ps = srmconsp;
 return retval;
}
