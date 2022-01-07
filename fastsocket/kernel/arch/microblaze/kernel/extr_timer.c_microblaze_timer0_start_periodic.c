
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TCSR0 ;
 unsigned long TCSR_ARHT ;
 unsigned long TCSR_ENIT ;
 unsigned long TCSR_ENT ;
 unsigned long TCSR_LOAD ;
 unsigned long TCSR_TINT ;
 unsigned long TCSR_UDT ;
 scalar_t__ TIMER_BASE ;
 scalar_t__ TLR0 ;
 int out_be32 (scalar_t__,unsigned long) ;

__attribute__((used)) static inline void microblaze_timer0_start_periodic(unsigned long load_val)
{
 if (!load_val)
  load_val = 1;
 out_be32(TIMER_BASE + TLR0, load_val);


 out_be32(TIMER_BASE + TCSR0, TCSR_LOAD);
 out_be32(TIMER_BASE + TCSR0,
   TCSR_TINT|TCSR_ENIT|TCSR_ENT|TCSR_ARHT|TCSR_UDT);
}
