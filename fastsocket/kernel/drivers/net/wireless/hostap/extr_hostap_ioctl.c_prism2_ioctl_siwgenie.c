
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;


 int prism2_set_genericelement (struct net_device*,char*,int ) ;

__attribute__((used)) static int prism2_ioctl_siwgenie(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_point *data, char *extra)
{
 return prism2_set_genericelement(dev, extra, data->length);
}
