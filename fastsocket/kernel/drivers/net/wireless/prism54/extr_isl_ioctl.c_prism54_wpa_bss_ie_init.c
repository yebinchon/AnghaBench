
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wpa_lock; int bss_wpa_list; } ;
typedef TYPE_1__ islpci_private ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;

void
prism54_wpa_bss_ie_init(islpci_private *priv)
{
 INIT_LIST_HEAD(&priv->bss_wpa_list);
 mutex_init(&priv->wpa_lock);
}
