
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* ipmi_user_t ;
struct TYPE_5__ {TYPE_1__* intf; } ;
struct TYPE_4__ {int maintenance_mode; int maintenance_mode_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipmi_get_maintenance_mode(ipmi_user_t user)
{
 int mode;
 unsigned long flags;

 spin_lock_irqsave(&user->intf->maintenance_mode_lock, flags);
 mode = user->intf->maintenance_mode;
 spin_unlock_irqrestore(&user->intf->maintenance_mode_lock, flags);

 return mode;
}
