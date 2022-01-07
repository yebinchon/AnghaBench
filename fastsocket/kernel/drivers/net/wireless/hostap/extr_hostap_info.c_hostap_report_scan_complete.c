
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ flags; scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct TYPE_5__ {scalar_t__ scan_timestamp; int dev; } ;
typedef TYPE_2__ local_info_t ;


 int SIOCGIWSCAN ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

__attribute__((used)) static void hostap_report_scan_complete(local_info_t *local)
{
 union iwreq_data wrqu;



 wrqu.data.length = 0;
 wrqu.data.flags = 0;
 wireless_send_event(local->dev, SIOCGIWSCAN, &wrqu, ((void*)0));



 local->scan_timestamp = 0;
}
