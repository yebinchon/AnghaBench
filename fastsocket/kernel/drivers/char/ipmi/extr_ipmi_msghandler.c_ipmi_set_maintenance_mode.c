
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ipmi_user_t ;
typedef TYPE_2__* ipmi_smi_t ;
struct TYPE_6__ {int maintenance_mode; int maintenance_mode_enable; int maintenance_mode_lock; int auto_maintenance_timeout; } ;
struct TYPE_5__ {TYPE_2__* intf; } ;


 int EINVAL ;



 int maintenance_mode_update (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipmi_set_maintenance_mode(ipmi_user_t user, int mode)
{
 int rv = 0;
 unsigned long flags;
 ipmi_smi_t intf = user->intf;

 spin_lock_irqsave(&intf->maintenance_mode_lock, flags);
 if (intf->maintenance_mode != mode) {
  switch (mode) {
  case 130:
   intf->maintenance_mode = mode;
   intf->maintenance_mode_enable
    = (intf->auto_maintenance_timeout > 0);
   break;

  case 129:
   intf->maintenance_mode = mode;
   intf->maintenance_mode_enable = 0;
   break;

  case 128:
   intf->maintenance_mode = mode;
   intf->maintenance_mode_enable = 1;
   break;

  default:
   rv = -EINVAL;
   goto out_unlock;
  }

  maintenance_mode_update(intf);
 }
 out_unlock:
 spin_unlock_irqrestore(&intf->maintenance_mode_lock, flags);

 return rv;
}
