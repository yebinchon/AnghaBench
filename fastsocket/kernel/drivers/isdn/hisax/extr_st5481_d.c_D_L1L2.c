
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_adapter {int hisax_d_if; } ;
struct hisax_if {int (* l1l2 ) (struct hisax_if*,int,void*) ;} ;


 int stub1 (struct hisax_if*,int,void*) ;

__attribute__((used)) static inline void D_L1L2(struct st5481_adapter *adapter, int pr, void *arg)
{
 struct hisax_if *ifc = (struct hisax_if *) &adapter->hisax_d_if;

 ifc->l1l2(ifc, pr, arg);
}
