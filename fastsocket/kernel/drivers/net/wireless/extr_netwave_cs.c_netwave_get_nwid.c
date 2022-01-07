
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fixed; scalar_t__ disabled; int value; } ;
union iwreq_data {TYPE_1__ nwid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int domain ;

__attribute__((used)) static int netwave_get_nwid(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu,
       char *extra)
{
 wrqu->nwid.value = domain;
 wrqu->nwid.disabled = 0;
 wrqu->nwid.fixed = 1;
 return 0;
}
