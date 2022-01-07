
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_test {int dummy; } ;


 int iwl_test_mem_stop (struct iwl_test*) ;
 int iwl_test_trace_stop (struct iwl_test*) ;

void iwl_test_free(struct iwl_test *tst)
{
 iwl_test_mem_stop(tst);
 iwl_test_trace_stop(tst);
}
