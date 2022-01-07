
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw_priv {TYPE_1__* ieee; } ;
struct TYPE_2__ {int wpa_enabled; } ;



__attribute__((used)) static int ipw_wpa_enable(struct ipw_priv *priv, int value)
{


 priv->ieee->wpa_enabled = value;
 return 0;
}
