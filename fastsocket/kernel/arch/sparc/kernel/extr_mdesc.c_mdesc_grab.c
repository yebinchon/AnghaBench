
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdesc_handle {int refcnt; } ;


 int atomic_inc (int *) ;
 struct mdesc_handle* cur_mdesc ;
 int mdesc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct mdesc_handle *mdesc_grab(void)
{
 struct mdesc_handle *hp;
 unsigned long flags;

 spin_lock_irqsave(&mdesc_lock, flags);
 hp = cur_mdesc;
 if (hp)
  atomic_inc(&hp->refcnt);
 spin_unlock_irqrestore(&mdesc_lock, flags);

 return hp;
}
