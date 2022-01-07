
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_bcs {int b_if; } ;
struct hisax_if {int (* l1l2 ) (struct hisax_if*,int,void*) ;} ;


 int stub1 (struct hisax_if*,int,void*) ;

__attribute__((used)) static inline void B_L1L2(struct st5481_bcs *bcs, int pr, void *arg)
{
 struct hisax_if *ifc = (struct hisax_if *) &bcs->b_if;

 ifc->l1l2(ifc, pr, arg);
}
