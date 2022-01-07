
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clflush (void*) ;
 scalar_t__ cpu_has_clflush ;
 int wbinvd () ;

__attribute__((used)) static inline void flush_tce(void* tceaddr)
{

 if (cpu_has_clflush)
  clflush(tceaddr);
 else
  wbinvd();
}
