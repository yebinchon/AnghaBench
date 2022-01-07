
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int name; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;
struct islpci_mgmtframe {TYPE_1__* header; } ;
struct TYPE_6__ {int priv_oid; int ndev; } ;
typedef TYPE_2__ islpci_private ;
struct TYPE_5__ {int operation; } ;


 int EINPROGRESS ;
 int EIO ;
 int PIMFOR_OP_ERROR ;
 int PIMFOR_OP_SET ;
 scalar_t__ PRV_STATE_INIT ;
 scalar_t__ islpci_get_state (TYPE_2__*) ;
 int islpci_mgt_release (struct islpci_mgmtframe*) ;
 int islpci_mgt_transaction (int ,int ,int ,char*,int ,struct islpci_mgmtframe**) ;
 TYPE_2__* netdev_priv (struct net_device*) ;
 int printk (char*,int ,...) ;

__attribute__((used)) static int
prism54_debug_set_oid(struct net_device *ndev, struct iw_request_info *info,
        struct iw_point *data, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 struct islpci_mgmtframe *response;
 int ret = 0, response_op = PIMFOR_OP_ERROR;

 printk("%s: set_oid 0x%08X\tlen: %d\n", ndev->name, priv->priv_oid,
        data->length);

 if (islpci_get_state(priv) >= PRV_STATE_INIT) {
  ret =
      islpci_mgt_transaction(priv->ndev, PIMFOR_OP_SET,
        priv->priv_oid, extra, data->length,
        &response);
  printk("%s: ret: %i\n", ndev->name, ret);
  if (ret || !response
      || response->header->operation == PIMFOR_OP_ERROR) {
   if (response) {
    islpci_mgt_release(response);
   }
   printk("%s: EIO\n", ndev->name);
   ret = -EIO;
  }
  if (!ret) {
   response_op = response->header->operation;
   printk("%s: response_op: %i\n", ndev->name,
          response_op);
   islpci_mgt_release(response);
  }
 }

 return (ret ? ret : -EINPROGRESS);
}
