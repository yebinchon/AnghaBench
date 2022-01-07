
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {int hisax_d_if; } ;
struct hisax_if {int (* l1l2 ) (struct hisax_if*,int,void*) ;} ;


 int DBG (int ,char*,int) ;
 int DBG_PR ;
 int stub1 (struct hisax_if*,int,void*) ;

__attribute__((used)) static inline void D_L1L2(struct isac *isac, int pr, void *arg)
{
 struct hisax_if *ifc = (struct hisax_if *) &isac->hisax_d_if;

 DBG(DBG_PR, "pr %#x", pr);
 ifc->l1l2(ifc, pr, arg);
}
