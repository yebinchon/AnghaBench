
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 scalar_t__ MPSC_INTR_CAUSE ;
 int MPSC_INTR_CAUSE_RCC ;
 int in_le32 (int *) ;
 scalar_t__ mpscintr_base ;

__attribute__((used)) static u8 mpsc_tstc(void)
{
 return (u8)((in_le32((u32 *)(mpscintr_base + MPSC_INTR_CAUSE))
    & MPSC_INTR_CAUSE_RCC) != 0);
}
