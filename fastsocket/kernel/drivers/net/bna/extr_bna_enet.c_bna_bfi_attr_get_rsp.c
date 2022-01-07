
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fw_query_complete; void* max_rit_size; int num_mcmac; void* num_ucmac; void* num_rxp; void* num_txq; } ;
struct bna_ioceth {TYPE_1__ attr; } ;
struct bfi_msgq_mhdr {int dummy; } ;
struct bfi_enet_attr_rsp {int rit_size; int max_ucmac; int max_cfg; } ;


 int BFI_ENET_MAX_MCAM ;
 int IOCETH_E_ENET_ATTR_RESP ;
 int bfa_fsm_send_event (struct bna_ioceth*,int ) ;
 void* ntohl (int ) ;

__attribute__((used)) static void
bna_bfi_attr_get_rsp(struct bna_ioceth *ioceth,
   struct bfi_msgq_mhdr *msghdr)
{
 struct bfi_enet_attr_rsp *rsp = (struct bfi_enet_attr_rsp *)msghdr;





 if (!ioceth->attr.fw_query_complete) {
  ioceth->attr.num_txq = ntohl(rsp->max_cfg);
  ioceth->attr.num_rxp = ntohl(rsp->max_cfg);
  ioceth->attr.num_ucmac = ntohl(rsp->max_ucmac);
  ioceth->attr.num_mcmac = BFI_ENET_MAX_MCAM;
  ioceth->attr.max_rit_size = ntohl(rsp->rit_size);
  ioceth->attr.fw_query_complete = 1;
 }

 bfa_fsm_send_event(ioceth, IOCETH_E_ENET_ATTR_RESP);
}
