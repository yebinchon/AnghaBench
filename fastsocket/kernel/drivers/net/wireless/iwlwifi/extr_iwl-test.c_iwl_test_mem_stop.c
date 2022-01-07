
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in_read; } ;
struct iwl_test {TYPE_1__ mem; } ;


 int iwl_test_mem_clear (struct iwl_test*) ;

__attribute__((used)) static inline void iwl_test_mem_stop(struct iwl_test *tst)
{
 if (!tst->mem.in_read)
  return;

 iwl_test_mem_clear(tst);
}
