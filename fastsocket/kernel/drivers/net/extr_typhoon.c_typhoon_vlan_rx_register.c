
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int dummy; } ;
struct typhoon {int state_lock; struct vlan_group* vlgrp; int name; int offload; } ;
struct net_device {int dummy; } ;
struct cmd_desc {int parm3; int parm2; } ;


 int INIT_COMMAND_WITH_RESPONSE (struct cmd_desc*,int ) ;
 int TYPHOON_CMD_SET_OFFLOAD_TASKS ;
 int TYPHOON_OFFLOAD_VLAN ;
 struct typhoon* netdev_priv (struct net_device*) ;
 int printk (char*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int typhoon_issue_command (struct typhoon*,int,struct cmd_desc*,int ,int *) ;

__attribute__((used)) static void
typhoon_vlan_rx_register(struct net_device *dev, struct vlan_group *grp)
{
 struct typhoon *tp = netdev_priv(dev);
 struct cmd_desc xp_cmd;
 int err;

 spin_lock_bh(&tp->state_lock);
 if(!tp->vlgrp != !grp) {



  if(grp)
   tp->offload |= TYPHOON_OFFLOAD_VLAN;
  else
   tp->offload &= ~TYPHOON_OFFLOAD_VLAN;






  INIT_COMMAND_WITH_RESPONSE(&xp_cmd,
     TYPHOON_CMD_SET_OFFLOAD_TASKS);
  xp_cmd.parm2 = tp->offload;
  xp_cmd.parm3 = tp->offload;
  spin_unlock_bh(&tp->state_lock);
  err = typhoon_issue_command(tp, 1, &xp_cmd, 0, ((void*)0));
  if(err < 0)
   printk("%s: vlan offload error %d\n", tp->name, -err);
  spin_lock_bh(&tp->state_lock);
 }


 tp->vlgrp = grp;
 spin_unlock_bh(&tp->state_lock);
}
