
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {int name; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int strcpy (int ,char*) ;

__attribute__((used)) static int gelic_wl_get_name(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *iwreq, char *extra)
{
 strcpy(iwreq->name, "IEEE 802.11bg");
 return 0;
}
