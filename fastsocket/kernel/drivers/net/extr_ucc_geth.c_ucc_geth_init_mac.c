
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucc_geth_private {TYPE_1__* ug_regs; struct net_device* ndev; } ;
struct net_device {int name; int * dev_addr; } ;
struct TYPE_2__ {int macstnaddr2; int macstnaddr1; } ;


 int COMM_DIR_RX_AND_TX ;
 int adjust_enet_interface (struct ucc_geth_private*) ;
 int init_mac_station_addr_regs (int ,int ,int ,int ,int ,int ,int *,int *) ;
 scalar_t__ netif_msg_ifup (struct ucc_geth_private*) ;
 int ucc_geth_startup (struct ucc_geth_private*) ;
 int ucc_geth_stop (struct ucc_geth_private*) ;
 int ucc_struct_init (struct ucc_geth_private*) ;
 int ugeth_enable (struct ucc_geth_private*,int ) ;
 int ugeth_err (char*,int ) ;

__attribute__((used)) static int ucc_geth_init_mac(struct ucc_geth_private *ugeth)
{
 struct net_device *dev = ugeth->ndev;
 int err;

 err = ucc_struct_init(ugeth);
 if (err) {
  if (netif_msg_ifup(ugeth))
   ugeth_err("%s: Cannot configure internal struct, "
      "aborting.", dev->name);
  goto err;
 }

 err = ucc_geth_startup(ugeth);
 if (err) {
  if (netif_msg_ifup(ugeth))
   ugeth_err("%s: Cannot configure net device, aborting.",
      dev->name);
  goto err;
 }

 err = adjust_enet_interface(ugeth);
 if (err) {
  if (netif_msg_ifup(ugeth))
   ugeth_err("%s: Cannot configure net device, aborting.",
      dev->name);
  goto err;
 }



 init_mac_station_addr_regs(dev->dev_addr[0],
       dev->dev_addr[1],
       dev->dev_addr[2],
       dev->dev_addr[3],
       dev->dev_addr[4],
       dev->dev_addr[5],
       &ugeth->ug_regs->macstnaddr1,
       &ugeth->ug_regs->macstnaddr2);

 err = ugeth_enable(ugeth, COMM_DIR_RX_AND_TX);
 if (err) {
  if (netif_msg_ifup(ugeth))
   ugeth_err("%s: Cannot enable net device, aborting.", dev->name);
  goto err;
 }

 return 0;
err:
 ucc_geth_stop(ugeth);
 return err;
}
