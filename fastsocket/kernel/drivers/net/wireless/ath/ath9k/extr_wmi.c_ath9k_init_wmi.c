
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi {int stopped; int wmi_event_tasklet; int pending_tx_events; int cmd_wait; int multi_write_mutex; int op_mutex; int event_lock; int wmi_lock; int wmi_event_queue; struct ath9k_htc_priv* drv_priv; } ;
struct ath9k_htc_priv {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ath9k_wmi_event_tasklet ;
 int init_completion (int *) ;
 struct wmi* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

struct wmi *ath9k_init_wmi(struct ath9k_htc_priv *priv)
{
 struct wmi *wmi;

 wmi = kzalloc(sizeof(struct wmi), GFP_KERNEL);
 if (!wmi)
  return ((void*)0);

 wmi->drv_priv = priv;
 wmi->stopped = 0;
 skb_queue_head_init(&wmi->wmi_event_queue);
 spin_lock_init(&wmi->wmi_lock);
 spin_lock_init(&wmi->event_lock);
 mutex_init(&wmi->op_mutex);
 mutex_init(&wmi->multi_write_mutex);
 init_completion(&wmi->cmd_wait);
 INIT_LIST_HEAD(&wmi->pending_tx_events);
 tasklet_init(&wmi->wmi_event_tasklet, ath9k_wmi_event_tasklet,
       (unsigned long)wmi);

 return wmi;
}
