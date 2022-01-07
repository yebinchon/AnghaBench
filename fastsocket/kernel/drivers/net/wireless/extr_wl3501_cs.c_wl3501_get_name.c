
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {int name; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int wl3501_get_name(struct net_device *dev, struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 strlcpy(wrqu->name, "IEEE 802.11-DS", sizeof(wrqu->name));
 return 0;
}
