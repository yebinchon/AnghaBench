
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_mc_mac {int is_vmac; int list; int mc_addrlen; int mc_addr; } ;
struct qeth_card {int mc_list; } ;
typedef int __u8 ;


 int GFP_ATOMIC ;
 int IPA_CMD_SETVMAC ;
 int OSA_ADDR_LEN ;
 int kfree (struct qeth_mc_mac*) ;
 struct qeth_mc_mac* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int *,int ) ;
 int qeth_l2_send_setdelmac (struct qeth_card*,int *,int ,int *) ;
 int qeth_l2_send_setgroupmac (struct qeth_card*,int *) ;

__attribute__((used)) static void qeth_l2_add_mc(struct qeth_card *card, __u8 *mac, int vmac)
{
 struct qeth_mc_mac *mc;
 int rc;

 mc = kmalloc(sizeof(struct qeth_mc_mac), GFP_ATOMIC);

 if (!mc)
  return;

 memcpy(mc->mc_addr, mac, OSA_ADDR_LEN);
 mc->mc_addrlen = OSA_ADDR_LEN;
 mc->is_vmac = vmac;

 if (vmac) {
  rc = qeth_l2_send_setdelmac(card, mac, IPA_CMD_SETVMAC,
     ((void*)0));
 } else {
  rc = qeth_l2_send_setgroupmac(card, mac);
 }

 if (!rc)
  list_add_tail(&mc->list, &card->mc_list);
 else
  kfree(mc);
}
