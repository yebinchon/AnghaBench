
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* _flush_tlb ) (int) ;} ;


 int VMI_FLUSH_GLOBAL ;
 int VMI_FLUSH_TLB ;
 int stub1 (int) ;
 TYPE_1__ vmi_ops ;

__attribute__((used)) static void vmi_flush_tlb_kernel(void)
{
 vmi_ops._flush_tlb(VMI_FLUSH_TLB | VMI_FLUSH_GLOBAL);
}
