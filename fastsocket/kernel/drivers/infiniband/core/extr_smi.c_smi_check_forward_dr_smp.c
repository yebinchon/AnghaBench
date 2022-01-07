
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_smp {int hop_ptr; int hop_cnt; scalar_t__ dr_dlid; scalar_t__ dr_slid; } ;
typedef enum smi_forward_action { ____Placeholder_smi_forward_action } smi_forward_action ;


 scalar_t__ IB_LID_PERMISSIVE ;
 int IB_SMI_FORWARD ;
 int IB_SMI_LOCAL ;
 int IB_SMI_SEND ;
 int ib_get_smp_direction (struct ib_smp*) ;

enum smi_forward_action smi_check_forward_dr_smp(struct ib_smp *smp)
{
 u8 hop_ptr, hop_cnt;

 hop_ptr = smp->hop_ptr;
 hop_cnt = smp->hop_cnt;

 if (!ib_get_smp_direction(smp)) {

  if (hop_ptr && hop_ptr < hop_cnt)
   return IB_SMI_FORWARD;


  if (hop_ptr == hop_cnt)
   return (smp->dr_dlid == IB_LID_PERMISSIVE ?
    IB_SMI_SEND : IB_SMI_LOCAL);


  if (hop_ptr == hop_cnt + 1)
   return IB_SMI_SEND;
 } else {

  if (2 <= hop_ptr && hop_ptr <= hop_cnt)
   return IB_SMI_FORWARD;


  if (hop_ptr == 1)
   return (smp->dr_slid != IB_LID_PERMISSIVE ?
    IB_SMI_SEND : IB_SMI_LOCAL);
 }
 return IB_SMI_LOCAL;
}
