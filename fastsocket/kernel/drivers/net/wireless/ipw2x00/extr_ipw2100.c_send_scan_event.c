
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ flags; scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct ipw2100_priv {int net_dev; } ;


 int SIOCGIWSCAN ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

__attribute__((used)) static void send_scan_event(void *data)
{
 struct ipw2100_priv *priv = data;
 union iwreq_data wrqu;

 wrqu.data.length = 0;
 wrqu.data.flags = 0;
 wireless_send_event(priv->net_dev, SIOCGIWSCAN, &wrqu, ((void*)0));
}
