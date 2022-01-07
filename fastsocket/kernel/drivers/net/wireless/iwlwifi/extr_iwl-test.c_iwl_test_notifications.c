
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct iwl_test {int notify; } ;


 size_t IWL_TM_ATTR_ENABLE_NOTIFICATION ;
 int nla_get_flag (struct nlattr*) ;

__attribute__((used)) static int iwl_test_notifications(struct iwl_test *tst,
      struct nlattr **tb)
{
 tst->notify = nla_get_flag(tb[IWL_TM_ATTR_ENABLE_NOTIFICATION]);
 return 0;
}
