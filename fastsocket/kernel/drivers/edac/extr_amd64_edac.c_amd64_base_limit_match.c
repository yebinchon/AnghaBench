
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amd64_pvt {int dummy; } ;


 int get_dram_base (struct amd64_pvt*,unsigned int) ;
 int get_dram_limit (struct amd64_pvt*,unsigned int) ;

__attribute__((used)) static bool amd64_base_limit_match(struct amd64_pvt *pvt, u64 sys_addr,
       unsigned nid)
{
 u64 addr;







 addr = sys_addr & 0x000000ffffffffffull;

 return ((addr >= get_dram_base(pvt, nid)) &&
  (addr <= get_dram_limit(pvt, nid)));
}
