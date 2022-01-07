
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {int state; int lock; int work; struct controller* ctrl; } ;
struct controller {int dummy; } ;




 int ENODEV ;



 int cancel_delayed_work (int *) ;
 int ctrl_err (struct controller*,char*,int ) ;
 int ctrl_info (struct controller*,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int shpchp_disable_slot (struct slot*) ;
 int slot_name (struct slot*) ;

int shpchp_sysfs_disable_slot(struct slot *p_slot)
{
 int retval = -ENODEV;
 struct controller *ctrl = p_slot->ctrl;

 mutex_lock(&p_slot->lock);
 switch (p_slot->state) {
 case 132:
  cancel_delayed_work(&p_slot->work);
 case 128:
  p_slot->state = 130;
  mutex_unlock(&p_slot->lock);
  retval = shpchp_disable_slot(p_slot);
  mutex_lock(&p_slot->lock);
  p_slot->state = 128;
  break;
 case 130:
  ctrl_info(ctrl, "Slot %s is already in powering off state\n",
     slot_name(p_slot));
  break;
 case 131:
 case 129:
  ctrl_info(ctrl, "Already disabled on slot %s\n",
     slot_name(p_slot));
  break;
 default:
  ctrl_err(ctrl, "Not a valid state on slot %s\n",
    slot_name(p_slot));
  break;
 }
 mutex_unlock(&p_slot->lock);

 return retval;
}
