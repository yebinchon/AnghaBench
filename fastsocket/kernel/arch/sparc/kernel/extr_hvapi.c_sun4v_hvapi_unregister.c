
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct api_info {int dummy; } ;


 struct api_info* __get_info (unsigned long) ;
 int __put_ref (struct api_info*) ;
 int hvapi_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void sun4v_hvapi_unregister(unsigned long group)
{
 struct api_info *p;
 unsigned long flags;

 spin_lock_irqsave(&hvapi_lock, flags);
 p = __get_info(group);
 if (p)
  __put_ref(p);
 spin_unlock_irqrestore(&hvapi_lock, flags);
}
