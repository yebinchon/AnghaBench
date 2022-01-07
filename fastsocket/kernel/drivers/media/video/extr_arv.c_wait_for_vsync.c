
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARVCR0 ;
 int ARVCR0_VDS ;
 int ar_inl (int ) ;
 int cpu_relax () ;

__attribute__((used)) static inline void wait_for_vsync(void)
{
 while (ar_inl(ARVCR0) & ARVCR0_VDS)
  cpu_relax();
 while (!(ar_inl(ARVCR0) & ARVCR0_VDS))
  cpu_relax();
}
