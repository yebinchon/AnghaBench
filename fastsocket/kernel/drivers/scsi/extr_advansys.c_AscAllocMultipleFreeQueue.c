
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uchar ;
typedef int PortAddr ;


 scalar_t__ ASC_QLINK_END ;
 scalar_t__ AscAllocFreeQueue (int ,scalar_t__) ;

__attribute__((used)) static uchar
AscAllocMultipleFreeQueue(PortAddr iop_base, uchar free_q_head, uchar n_free_q)
{
 uchar i;

 for (i = 0; i < n_free_q; i++) {
  free_q_head = AscAllocFreeQueue(iop_base, free_q_head);
  if (free_q_head == ASC_QLINK_END)
   break;
 }
 return free_q_head;
}
