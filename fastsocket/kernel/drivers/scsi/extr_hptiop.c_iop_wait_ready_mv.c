
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hptiop_hba {int dummy; } ;


 int IOPMU_INBOUND_MSG0_NOP ;
 int iop_send_sync_msg (struct hptiop_hba*,int ,int ) ;

__attribute__((used)) static int iop_wait_ready_mv(struct hptiop_hba *hba, u32 millisec)
{
 return iop_send_sync_msg(hba, IOPMU_INBOUND_MSG0_NOP, millisec);
}
