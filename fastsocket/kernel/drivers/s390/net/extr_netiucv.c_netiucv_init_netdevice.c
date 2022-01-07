
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netiucv_priv {int fsm; int conn; } ;
struct net_device {int name; } ;


 int DEV_FSM_LEN ;
 int DEV_STATE_STOPPED ;
 int GFP_KERNEL ;
 int IUCV_DBF_TEXT (int ,int,char*) ;
 int NR_DEV_EVENTS ;
 int NR_DEV_STATES ;
 struct net_device* alloc_netdev (int,char*,int ) ;
 scalar_t__ dev_alloc_name (struct net_device*,int ) ;
 int dev_event_names ;
 int dev_fsm ;
 int dev_state_names ;
 int free_netdev (struct net_device*) ;
 int fsm_newstate (int ,int ) ;
 int init_fsm (char*,int ,int ,int ,int ,int ,int ,int ) ;
 int kfree_fsm (int ) ;
 struct netiucv_priv* netdev_priv (struct net_device*) ;
 int netiucv_new_connection (struct net_device*,char*) ;
 int netiucv_setup_netdevice ;
 int setup ;

__attribute__((used)) static struct net_device *netiucv_init_netdevice(char *username)
{
 struct netiucv_priv *privptr;
 struct net_device *dev;

 dev = alloc_netdev(sizeof(struct netiucv_priv), "iucv%d",
      netiucv_setup_netdevice);
 if (!dev)
  return ((void*)0);
 if (dev_alloc_name(dev, dev->name) < 0)
  goto out_netdev;

 privptr = netdev_priv(dev);
 privptr->fsm = init_fsm("netiucvdev", dev_state_names,
    dev_event_names, NR_DEV_STATES, NR_DEV_EVENTS,
    dev_fsm, DEV_FSM_LEN, GFP_KERNEL);
 if (!privptr->fsm)
  goto out_netdev;

 privptr->conn = netiucv_new_connection(dev, username);
 if (!privptr->conn) {
  IUCV_DBF_TEXT(setup, 2, "NULL from netiucv_new_connection\n");
  goto out_fsm;
 }
 fsm_newstate(privptr->fsm, DEV_STATE_STOPPED);
 return dev;

out_fsm:
 kfree_fsm(privptr->fsm);
out_netdev:
 free_netdev(dev);
 return ((void*)0);
}
