
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ucc_geth_private {TYPE_2__* ug_info; struct ucc_fast_private* uccf; } ;
struct ucc_fast_private {scalar_t__ stopped_rx; } ;
struct TYPE_3__ {int ucc_num; } ;
struct TYPE_4__ {TYPE_1__ uf_info; } ;


 int QE_CR_PROTOCOL_ETHERNET ;
 int QE_RESTART_RX ;
 int qe_issue_cmd (int ,int ,int ,int ) ;
 int ucc_fast_get_qe_cr_subblock (int ) ;

__attribute__((used)) static int ugeth_restart_rx(struct ucc_geth_private *ugeth)
{
 struct ucc_fast_private *uccf;
 u32 cecr_subblock;

 uccf = ugeth->uccf;

 cecr_subblock =
     ucc_fast_get_qe_cr_subblock(ugeth->ug_info->uf_info.ucc_num);
 qe_issue_cmd(QE_RESTART_RX, cecr_subblock, QE_CR_PROTOCOL_ETHERNET,
       0);
 uccf->stopped_rx = 0;

 return 0;
}
