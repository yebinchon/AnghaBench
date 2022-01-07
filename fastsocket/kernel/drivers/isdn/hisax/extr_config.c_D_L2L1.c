
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisax_if {int (* l2l1 ) (struct hisax_if*,int,void*) ;} ;
struct hisax_d_if {int dummy; } ;


 int stub1 (struct hisax_if*,int,void*) ;

__attribute__((used)) static inline void D_L2L1(struct hisax_d_if *d_if, int pr, void *arg)
{
 struct hisax_if *ifc = (struct hisax_if *) d_if;
 ifc->l2l1(ifc, pr, arg);
}
