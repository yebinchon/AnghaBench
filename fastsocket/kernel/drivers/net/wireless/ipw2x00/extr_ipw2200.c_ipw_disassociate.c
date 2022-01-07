
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int status; int net_dev; } ;


 int STATUS_ASSOCIATED ;
 int STATUS_ASSOCIATING ;
 int ipw_send_disassociate (void*,int ) ;
 int netif_carrier_off (int ) ;

__attribute__((used)) static int ipw_disassociate(void *data)
{
 struct ipw_priv *priv = data;
 if (!(priv->status & (STATUS_ASSOCIATED | STATUS_ASSOCIATING)))
  return 0;
 ipw_send_disassociate(data, 0);
 netif_carrier_off(priv->net_dev);
 return 1;
}
