
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int dummy; } ;


 int ipw_wpa_enable (struct ipw_priv*,int) ;

__attribute__((used)) static void ipw_wpa_assoc_frame(struct ipw_priv *priv, char *wpa_ie,
    int wpa_ie_len)
{

 ipw_wpa_enable(priv, 1);
}
