
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ucc_slow_private {struct ucc_slow_info* us_info; } ;
struct ucc_slow_info {int ucc_num; } ;


 int QE_CR_PROTOCOL_UNSPECIFIED ;
 int QE_GRACEFUL_STOP_TX ;
 int qe_issue_cmd (int ,int ,int ,int ) ;
 int ucc_slow_get_qe_cr_subblock (int ) ;

void ucc_slow_graceful_stop_tx(struct ucc_slow_private * uccs)
{
 struct ucc_slow_info *us_info = uccs->us_info;
 u32 id;

 id = ucc_slow_get_qe_cr_subblock(us_info->ucc_num);
 qe_issue_cmd(QE_GRACEFUL_STOP_TX, id,
    QE_CR_PROTOCOL_UNSPECIFIED, 0);
}
