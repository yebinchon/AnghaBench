
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hpsb_host {int dummy; } ;


 int CSR1212_UNITS_SPACE_BASE ;
 int CSR1212_UNITS_SPACE_END ;
 int config_rom_ops ;
 int csr_highlevel ;
 int hpsb_allocate_and_register_addrspace (int *,struct hpsb_host*,int *,int ,int ,int ,int ) ;

__attribute__((used)) static u64 allocate_addr_range(u64 size, u32 alignment, void *__host)
{
  struct hpsb_host *host = (struct hpsb_host*)__host;

 return hpsb_allocate_and_register_addrspace(&csr_highlevel,
          host,
          &config_rom_ops,
          size, alignment,
          CSR1212_UNITS_SPACE_BASE,
          CSR1212_UNITS_SPACE_END);
}
