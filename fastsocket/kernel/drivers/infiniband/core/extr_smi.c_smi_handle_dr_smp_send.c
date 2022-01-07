
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ib_smp {scalar_t__ hop_ptr; scalar_t__ hop_cnt; int* initial_path; scalar_t__ dr_dlid; int* return_path; scalar_t__ dr_slid; } ;
typedef enum smi_action { ____Placeholder_smi_action } smi_action ;


 scalar_t__ IB_LID_PERMISSIVE ;
 int IB_SMI_DISCARD ;
 int IB_SMI_HANDLE ;
 scalar_t__ IB_SMP_MAX_PATH_HOPS ;
 scalar_t__ RDMA_NODE_IB_SWITCH ;
 int ib_get_smp_direction (struct ib_smp*) ;

enum smi_action smi_handle_dr_smp_send(struct ib_smp *smp,
           u8 node_type, int port_num)
{
 u8 hop_ptr, hop_cnt;

 hop_ptr = smp->hop_ptr;
 hop_cnt = smp->hop_cnt;



 if (hop_cnt >= IB_SMP_MAX_PATH_HOPS)
  return IB_SMI_DISCARD;

 if (!ib_get_smp_direction(smp)) {

  if (hop_cnt && hop_ptr == 0) {
   smp->hop_ptr++;
   return (smp->initial_path[smp->hop_ptr] ==
    port_num ? IB_SMI_HANDLE : IB_SMI_DISCARD);
  }


  if (hop_ptr && hop_ptr < hop_cnt) {
   if (node_type != RDMA_NODE_IB_SWITCH)
    return IB_SMI_DISCARD;


   smp->hop_ptr++;
   return (smp->initial_path[smp->hop_ptr] ==
    port_num ? IB_SMI_HANDLE : IB_SMI_DISCARD);
  }


  if (hop_ptr == hop_cnt) {

   smp->hop_ptr++;
   return (node_type == RDMA_NODE_IB_SWITCH ||
    smp->dr_dlid == IB_LID_PERMISSIVE ?
    IB_SMI_HANDLE : IB_SMI_DISCARD);
  }



  return (hop_ptr == hop_cnt + 1 ? IB_SMI_HANDLE : IB_SMI_DISCARD);

 } else {

  if (hop_cnt && hop_ptr == hop_cnt + 1) {
   smp->hop_ptr--;
   return (smp->return_path[smp->hop_ptr] ==
    port_num ? IB_SMI_HANDLE : IB_SMI_DISCARD);
  }


  if (2 <= hop_ptr && hop_ptr <= hop_cnt) {
   if (node_type != RDMA_NODE_IB_SWITCH)
    return IB_SMI_DISCARD;

   smp->hop_ptr--;
   return (smp->return_path[smp->hop_ptr] ==
    port_num ? IB_SMI_HANDLE : IB_SMI_DISCARD);
  }


  if (hop_ptr == 1) {
   smp->hop_ptr--;

   return (node_type == RDMA_NODE_IB_SWITCH ||
    smp->dr_slid == IB_LID_PERMISSIVE ?
    IB_SMI_HANDLE : IB_SMI_DISCARD);
  }


  if (hop_ptr == 0)
   return IB_SMI_HANDLE;


  return IB_SMI_DISCARD;
 }
}
