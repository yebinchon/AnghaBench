
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_timer_entry {int skb; } ;
struct nes_cm_node {int cm_core; struct nes_timer_entry* send_entry; } ;


 int dev_kfree_skb_any (int ) ;
 int kfree (struct nes_timer_entry*) ;
 int rem_ref_cm_node (int ,struct nes_cm_node*) ;

__attribute__((used)) static void free_retrans_entry(struct nes_cm_node *cm_node)
{
 struct nes_timer_entry *send_entry;

 send_entry = cm_node->send_entry;
 if (send_entry) {
  cm_node->send_entry = ((void*)0);
  dev_kfree_skb_any(send_entry->skb);
  kfree(send_entry);
  rem_ref_cm_node(cm_node->cm_core, cm_node);
 }
}
