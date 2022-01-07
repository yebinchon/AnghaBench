
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_9__ {scalar_t__ spy_number; } ;
struct TYPE_10__ {int mib_sem; TYPE_2__ spy_data; } ;
typedef TYPE_3__ islpci_private ;
typedef enum oid_num_t { ____Placeholder_oid_num_t } oid_num_t ;


 int INL_CONFIG_RXANNEX ;
 int OID_INL_CONFIG ;
 int down_write (int *) ;
 int iw_handler_set_spy (struct net_device*,struct iw_request_info*,union iwreq_data*,char*) ;
 int mgt_commit_list (TYPE_3__*,int*,int) ;
 int mgt_get (TYPE_3__*,int,int *) ;
 int mgt_set (TYPE_3__*,int,int *) ;
 TYPE_3__* netdev_priv (struct net_device*) ;
 int up_write (int *) ;

__attribute__((used)) static int
prism54_set_spy(struct net_device *ndev,
  struct iw_request_info *info,
  union iwreq_data *uwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 u32 u;
 enum oid_num_t oid = OID_INL_CONFIG;

 down_write(&priv->mib_sem);
 mgt_get(priv, OID_INL_CONFIG, &u);

 if ((uwrq->data.length == 0) && (priv->spy_data.spy_number > 0))

  u &= ~INL_CONFIG_RXANNEX;
 else if ((uwrq->data.length > 0) && (priv->spy_data.spy_number == 0))

  u |= INL_CONFIG_RXANNEX;

 mgt_set(priv, OID_INL_CONFIG, &u);
 mgt_commit_list(priv, &oid, 1);
 up_write(&priv->mib_sem);

 return iw_handler_set_spy(ndev, info, uwrq, extra);
}
