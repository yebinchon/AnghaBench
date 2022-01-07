
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARVHCOUNT ;
 int ar_inl (int ) ;
 int cpu_relax () ;
 int printk (char*,int,int) ;

__attribute__((used)) static inline void wait_for_vertical_sync(int exp_line)
{
 while (ar_inl(ARVHCOUNT) != exp_line)
  cpu_relax();

}
