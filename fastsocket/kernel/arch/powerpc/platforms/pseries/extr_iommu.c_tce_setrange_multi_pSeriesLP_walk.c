
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tce_setrange_multi_pSeriesLP (unsigned long,unsigned long,void*) ;

__attribute__((used)) static int tce_setrange_multi_pSeriesLP_walk(unsigned long start_pfn,
  unsigned long num_pfn, void *arg)
{
 return tce_setrange_multi_pSeriesLP(start_pfn, num_pfn, arg);
}
