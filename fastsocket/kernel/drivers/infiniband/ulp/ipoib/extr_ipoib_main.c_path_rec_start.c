
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int raw; } ;
struct TYPE_4__ {TYPE_1__ dgid; } ;
struct ipoib_path {int query_id; int done; int * query; TYPE_2__ pathrec; } ;
struct ipoib_dev_priv {int port; int ca; } ;


 int GFP_ATOMIC ;
 int IB_SA_PATH_REC_DGID ;
 int IB_SA_PATH_REC_NUMB_PATH ;
 int IB_SA_PATH_REC_PKEY ;
 int IB_SA_PATH_REC_SGID ;
 int IB_SA_PATH_REC_TRAFFIC_CLASS ;
 int complete (int *) ;
 int ib_sa_path_rec_get (int *,int ,int ,TYPE_2__*,int,int,int ,int ,struct ipoib_path*,int **) ;
 int init_completion (int *) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*,int ) ;
 int ipoib_sa_client ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int path_rec_completion ;

__attribute__((used)) static int path_rec_start(struct net_device *dev,
     struct ipoib_path *path)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);

 ipoib_dbg(priv, "Start path record lookup for %pI6\n",
    path->pathrec.dgid.raw);

 init_completion(&path->done);

 path->query_id =
  ib_sa_path_rec_get(&ipoib_sa_client, priv->ca, priv->port,
       &path->pathrec,
       IB_SA_PATH_REC_DGID |
       IB_SA_PATH_REC_SGID |
       IB_SA_PATH_REC_NUMB_PATH |
       IB_SA_PATH_REC_TRAFFIC_CLASS |
       IB_SA_PATH_REC_PKEY,
       1000, GFP_ATOMIC,
       path_rec_completion,
       path, &path->query);
 if (path->query_id < 0) {
  ipoib_warn(priv, "ib_sa_path_rec_get failed: %d\n", path->query_id);
  path->query = ((void*)0);
  complete(&path->done);
  return path->query_id;
 }

 return 0;
}
