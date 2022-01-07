
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_family; int sa_data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct atmel_private {int CurrentBSSID; } ;


 int ARPHRD_ETHER ;
 int memcpy (int ,int ,int) ;
 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_get_wap(struct net_device *dev,
    struct iw_request_info *info,
    struct sockaddr *awrq,
    char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);
 memcpy(awrq->sa_data, priv->CurrentBSSID, 6);
 awrq->sa_family = ARPHRD_ETHER;

 return 0;
}
