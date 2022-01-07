
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_test_mem {int dummy; } ;
struct iwl_test {int mem; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static inline void iwl_test_mem_clear(struct iwl_test *tst)
{
 memset(&tst->mem, 0, sizeof(struct iwl_test_mem));
}
