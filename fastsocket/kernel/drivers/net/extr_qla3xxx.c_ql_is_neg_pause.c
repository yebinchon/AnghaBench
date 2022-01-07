
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int dummy; } ;


 scalar_t__ ql_is_fiber (struct ql3_adapter*) ;
 int ql_is_petbi_neg_pause (struct ql3_adapter*) ;
 int ql_is_phy_neg_pause (struct ql3_adapter*) ;

__attribute__((used)) static int ql_is_neg_pause(struct ql3_adapter *qdev)
{
 if (ql_is_fiber(qdev))
  return ql_is_petbi_neg_pause(qdev);
 else
  return ql_is_phy_neg_pause(qdev);
}
