
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fw_query_complete; int max_rit_size; int num_mcmac; int num_ucmac; int num_rxp; int num_txq; } ;
struct bna_ioceth {TYPE_1__ attr; } ;


 int BFI_ENET_DEF_RITSZ ;
 int BFI_ENET_DEF_RXP ;
 int BFI_ENET_DEF_TXQ ;
 int BFI_ENET_DEF_UCAM ;
 int BFI_ENET_MAX_MCAM ;

__attribute__((used)) static void bna_attr_init(struct bna_ioceth *ioceth)
{
 ioceth->attr.num_txq = BFI_ENET_DEF_TXQ;
 ioceth->attr.num_rxp = BFI_ENET_DEF_RXP;
 ioceth->attr.num_ucmac = BFI_ENET_DEF_UCAM;
 ioceth->attr.num_mcmac = BFI_ENET_MAX_MCAM;
 ioceth->attr.max_rit_size = BFI_ENET_DEF_RITSZ;
 ioceth->attr.fw_query_complete = 0;
}
