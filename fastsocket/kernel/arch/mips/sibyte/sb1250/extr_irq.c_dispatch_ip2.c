
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A_IMR_REGISTER (unsigned int,int ) ;
 int IOADDR (int ) ;
 int R_IMR_INTERRUPT_STATUS_BASE ;
 unsigned long long __raw_readq (int ) ;
 int do_IRQ (scalar_t__) ;
 scalar_t__ fls64 (unsigned long long) ;
 unsigned int smp_processor_id () ;

__attribute__((used)) static inline void dispatch_ip2(void)
{
 unsigned int cpu = smp_processor_id();
 unsigned long long mask;






 mask = __raw_readq(IOADDR(A_IMR_REGISTER(cpu,
      R_IMR_INTERRUPT_STATUS_BASE)));
 if (mask)
  do_IRQ(fls64(mask) - 1);
}
