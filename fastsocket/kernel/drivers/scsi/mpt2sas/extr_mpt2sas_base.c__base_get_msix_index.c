
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct MPT2SAS_ADAPTER {int * cpu_msix_table; } ;


 size_t raw_smp_processor_id () ;

__attribute__((used)) static inline u8
_base_get_msix_index(struct MPT2SAS_ADAPTER *ioc)
{
 return ioc->cpu_msix_table[raw_smp_processor_id()];
}
