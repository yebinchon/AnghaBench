
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wmi_cmd_hdr {int command_id; } ;
struct wmi {int last_cmd_id; int wmi_lock; int wmi_event_tasklet; int wmi_event_queue; int stopped; } ;
struct sk_buff {scalar_t__ data; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 int __skb_queue_tail (int *,struct sk_buff*) ;
 int ath9k_wmi_rsp_callback (struct wmi*,struct sk_buff*) ;
 int be16_to_cpu (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void ath9k_wmi_ctrl_rx(void *priv, struct sk_buff *skb,
         enum htc_endpoint_id epid)
{
 struct wmi *wmi = (struct wmi *) priv;
 struct wmi_cmd_hdr *hdr;
 u16 cmd_id;

 if (unlikely(wmi->stopped))
  goto free_skb;

 hdr = (struct wmi_cmd_hdr *) skb->data;
 cmd_id = be16_to_cpu(hdr->command_id);

 if (cmd_id & 0x1000) {
  spin_lock(&wmi->wmi_lock);
  __skb_queue_tail(&wmi->wmi_event_queue, skb);
  spin_unlock(&wmi->wmi_lock);
  tasklet_schedule(&wmi->wmi_event_tasklet);
  return;
 }


 spin_lock(&wmi->wmi_lock);
 if (cmd_id != wmi->last_cmd_id) {
  spin_unlock(&wmi->wmi_lock);
  goto free_skb;
 }
 spin_unlock(&wmi->wmi_lock);


 ath9k_wmi_rsp_callback(wmi, skb);

free_skb:
 kfree_skb(skb);
}
