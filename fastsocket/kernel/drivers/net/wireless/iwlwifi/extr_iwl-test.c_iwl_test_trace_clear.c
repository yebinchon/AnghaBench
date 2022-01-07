
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_test_trace {int dummy; } ;
struct iwl_test {int trace; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static inline void iwl_test_trace_clear(struct iwl_test *tst)
{
 memset(&tst->trace, 0, sizeof(struct iwl_test_trace));
}
