
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obj_mlme {scalar_t__ id; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int dummy; } ;


 int DOT11_OID_DISASSOCIATE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct obj_mlme*) ;
 struct obj_mlme* kmalloc (int,int ) ;
 int mgt_set_request (int ,int ,int ,struct obj_mlme*) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_kick_all(struct net_device *ndev, struct iw_request_info *info,
   struct iw_point *dwrq, char *extra)
{
 struct obj_mlme *mlme;
 int rvalue;

 mlme = kmalloc(sizeof (struct obj_mlme), GFP_KERNEL);
 if (mlme == ((void*)0))
  return -ENOMEM;


 mlme->id = 0;
 rvalue =
     mgt_set_request(netdev_priv(ndev), DOT11_OID_DISASSOCIATE, 0, mlme);
 kfree(mlme);

 return rvalue;
}
