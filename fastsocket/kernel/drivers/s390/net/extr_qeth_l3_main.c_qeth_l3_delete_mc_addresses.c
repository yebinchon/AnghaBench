
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_ipaddr {int type; } ;
struct qeth_card {int ip_lock; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_IP_TYPE_DEL_ALL_MC ;
 int QETH_PROT_IPV4 ;
 int TRACE ;
 int __qeth_l3_insert_ip_todo (struct qeth_card*,struct qeth_ipaddr*,int ) ;
 int kfree (struct qeth_ipaddr*) ;
 struct qeth_ipaddr* qeth_l3_get_addr_buffer (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qeth_l3_delete_mc_addresses(struct qeth_card *card)
{
 struct qeth_ipaddr *iptodo;
 unsigned long flags;

 QETH_DBF_TEXT(TRACE, 4, "delmc");
 iptodo = qeth_l3_get_addr_buffer(QETH_PROT_IPV4);
 if (!iptodo) {
  QETH_DBF_TEXT(TRACE, 2, "dmcnomem");
  return;
 }
 iptodo->type = QETH_IP_TYPE_DEL_ALL_MC;
 spin_lock_irqsave(&card->ip_lock, flags);
 if (!__qeth_l3_insert_ip_todo(card, iptodo, 0))
  kfree(iptodo);
 spin_unlock_irqrestore(&card->ip_lock, flags);
}
