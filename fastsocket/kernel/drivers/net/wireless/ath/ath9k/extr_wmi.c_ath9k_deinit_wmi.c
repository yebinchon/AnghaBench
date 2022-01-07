
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi {int stopped; int op_mutex; } ;
struct ath9k_htc_priv {struct wmi* wmi; } ;


 int kfree (struct wmi*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ath9k_deinit_wmi(struct ath9k_htc_priv *priv)
{
 struct wmi *wmi = priv->wmi;

 mutex_lock(&wmi->op_mutex);
 wmi->stopped = 1;
 mutex_unlock(&wmi->op_mutex);

 kfree(priv->wmi);
}
