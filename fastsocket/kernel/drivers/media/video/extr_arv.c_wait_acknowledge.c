
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLDI2CSTS ;
 int PLDI2CSTS_NOACK ;
 int ar_inl (int ) ;
 int cpu_relax () ;

__attribute__((used)) static inline void wait_acknowledge(void)
{
 int i;

 for (i = 0; i < 1000; i++)
  cpu_relax();
 while (ar_inl(PLDI2CSTS) & PLDI2CSTS_NOACK)
  cpu_relax();
}
