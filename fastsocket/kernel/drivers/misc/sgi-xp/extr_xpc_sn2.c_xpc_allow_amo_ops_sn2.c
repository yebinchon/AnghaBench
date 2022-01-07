
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amo {int dummy; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int PAGE_SIZE ;
 int enable_shub_wars_1_1 () ;
 int ia64_tpa (int ) ;
 int xpSuccess ;
 int xp_expand_memprotect (int ,int ) ;

__attribute__((used)) static enum xp_retval
xpc_allow_amo_ops_sn2(struct amo *amos_page)
{
 enum xp_retval ret = xpSuccess;






 if (!enable_shub_wars_1_1())
  ret = xp_expand_memprotect(ia64_tpa((u64)amos_page), PAGE_SIZE);

 return ret;
}
