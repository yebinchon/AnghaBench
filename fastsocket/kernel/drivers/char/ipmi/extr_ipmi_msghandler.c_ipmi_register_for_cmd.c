
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cmd_rcvr {unsigned char cmd; unsigned char netfn; unsigned int chans; int link; TYPE_1__* user; } ;
typedef TYPE_1__* ipmi_user_t ;
typedef TYPE_2__* ipmi_smi_t ;
struct TYPE_6__ {int cmd_rcvrs_mutex; int cmd_rcvrs; } ;
struct TYPE_5__ {TYPE_2__* intf; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int is_cmd_rcvr_exclusive (TYPE_2__*,unsigned char,unsigned char,unsigned int) ;
 int kfree (struct cmd_rcvr*) ;
 struct cmd_rcvr* kmalloc (int,int ) ;
 int list_add_rcu (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ipmi_register_for_cmd(ipmi_user_t user,
     unsigned char netfn,
     unsigned char cmd,
     unsigned int chans)
{
 ipmi_smi_t intf = user->intf;
 struct cmd_rcvr *rcvr;
 int rv = 0;


 rcvr = kmalloc(sizeof(*rcvr), GFP_KERNEL);
 if (!rcvr)
  return -ENOMEM;
 rcvr->cmd = cmd;
 rcvr->netfn = netfn;
 rcvr->chans = chans;
 rcvr->user = user;

 mutex_lock(&intf->cmd_rcvrs_mutex);

 if (!is_cmd_rcvr_exclusive(intf, netfn, cmd, chans)) {
  rv = -EBUSY;
  goto out_unlock;
 }

 list_add_rcu(&rcvr->link, &intf->cmd_rcvrs);

 out_unlock:
 mutex_unlock(&intf->cmd_rcvrs_mutex);
 if (rv)
  kfree(rcvr);

 return rv;
}
