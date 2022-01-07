
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int cid; int error; } ;
struct TYPE_4__ {TYPE_1__ comp; } ;
struct cnic_ctl_info {TYPE_2__ data; int cmd; int member_0; } ;
struct bnx2x {int dummy; } ;


 int CNIC_CTL_COMPLETION_CMD ;
 int bnx2x_cnic_ctl_send_bh (struct bnx2x*,struct cnic_ctl_info*) ;
 int bnx2x_cnic_sp_post (struct bnx2x*,int ) ;

__attribute__((used)) static void bnx2x_cnic_cfc_comp(struct bnx2x *bp, int cid, u8 err)
{
 struct cnic_ctl_info ctl = {0};


 ctl.cmd = CNIC_CTL_COMPLETION_CMD;
 ctl.data.comp.cid = cid;
 ctl.data.comp.error = err;

 bnx2x_cnic_ctl_send_bh(bp, &ctl);
 bnx2x_cnic_sp_post(bp, 0);
}
