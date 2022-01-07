
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hisax_b_if {int dummy; } ;
struct TYPE_2__ {struct hisax_b_if* b_if; } ;
struct BCState {TYPE_1__ hw; } ;


 int B_L2L1 (struct hisax_b_if*,int,int *) ;
 int PH_DEACTIVATE ;
 int REQUEST ;

__attribute__((used)) static void hisax_bc_close(struct BCState *bcs)
{
 struct hisax_b_if *b_if = bcs->hw.b_if;

 if (b_if)
  B_L2L1(b_if, PH_DEACTIVATE | REQUEST, ((void*)0));
}
