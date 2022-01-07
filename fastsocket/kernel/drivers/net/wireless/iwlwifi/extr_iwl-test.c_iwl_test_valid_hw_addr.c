
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_test {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* valid_hw_addr ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static inline bool iwl_test_valid_hw_addr(struct iwl_test *tst, u32 addr)
{
 return tst->ops->valid_hw_addr(addr);
}
