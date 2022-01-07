
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EINVAL ;
 int IBSCTL_LVT_OFFSET_MASK ;
 int IBSCTL_LVT_OFFSET_VALID ;
 int MSR_AMD64_IBSCTL ;
 int rdmsrl (int ,int) ;

__attribute__((used)) static inline int get_ibs_offset(void)
{
 u64 val;

 rdmsrl(MSR_AMD64_IBSCTL, val);
 if (!(val & IBSCTL_LVT_OFFSET_VALID))
  return -EINVAL;

 return val & IBSCTL_LVT_OFFSET_MASK;
}
