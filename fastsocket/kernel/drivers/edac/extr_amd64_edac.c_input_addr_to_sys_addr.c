
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_ctl_info {int dummy; } ;


 int dram_addr_to_sys_addr (struct mem_ctl_info*,int ) ;
 int input_addr_to_dram_addr (struct mem_ctl_info*,int ) ;

__attribute__((used)) static inline u64 input_addr_to_sys_addr(struct mem_ctl_info *mci,
      u64 input_addr)
{
 return dram_addr_to_sys_addr(mci,
         input_addr_to_dram_addr(mci, input_addr));
}
