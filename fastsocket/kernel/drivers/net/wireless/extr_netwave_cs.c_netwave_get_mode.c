
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {int mode; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int IW_MODE_ADHOC ;
 int IW_MODE_INFRA ;
 int domain ;

__attribute__((used)) static int netwave_get_mode(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu,
       char *extra)
{
 if(domain & 0x100)
  wrqu->mode = IW_MODE_INFRA;
 else
  wrqu->mode = IW_MODE_ADHOC;

 return 0;
}
