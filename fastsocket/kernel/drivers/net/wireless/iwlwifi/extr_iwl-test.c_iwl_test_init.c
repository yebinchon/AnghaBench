
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;
struct iwl_test_ops {int dummy; } ;
struct iwl_test {struct iwl_test_ops* ops; struct iwl_trans* trans; } ;


 int iwl_test_mem_clear (struct iwl_test*) ;
 int iwl_test_trace_clear (struct iwl_test*) ;

void iwl_test_init(struct iwl_test *tst, struct iwl_trans *trans,
     struct iwl_test_ops *ops)
{
 tst->trans = trans;
 tst->ops = ops;

 iwl_test_trace_clear(tst);
 iwl_test_mem_clear(tst);
}
