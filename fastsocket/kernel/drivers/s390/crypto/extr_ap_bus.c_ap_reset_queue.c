
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue_status {int dummy; } ;
typedef int ap_qid_t ;



__attribute__((used)) static inline struct ap_queue_status ap_reset_queue(ap_qid_t qid)
{
 register unsigned long reg0 asm ("0") = qid | 0x01000000UL;
 register struct ap_queue_status reg1 asm ("1");
 register unsigned long reg2 asm ("2") = 0UL;

 asm volatile(
  ".long 0xb2af0000"
  : "+d" (reg0), "=d" (reg1), "+d" (reg2) : : "cc");
 return reg1;
}
