
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int gelic_wl_get_nick(struct net_device *net_dev,
      struct iw_request_info *info,
      union iwreq_data *data, char *extra)
{
 strcpy(extra, "gelic_wl");
 data->data.length = strlen(extra);
 data->data.flags = 1;
 return 0;
}
