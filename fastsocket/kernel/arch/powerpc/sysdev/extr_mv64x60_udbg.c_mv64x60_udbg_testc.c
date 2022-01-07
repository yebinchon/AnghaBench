
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MPSC_INTR_CAUSE_RCC ;
 int in_le32 (int ) ;
 int mpsc_intr_cause ;

__attribute__((used)) static int mv64x60_udbg_testc(void)
{
 return (in_le32(mpsc_intr_cause) & MPSC_INTR_CAUSE_RCC) != 0;
}
