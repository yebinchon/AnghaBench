
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_info {int member_0; char* member_1; int member_2; int member_3; } ;
struct adapter {int dummy; } ;


 int A_MPS_INT_CAUSE ;
 int t3_fatal_err (struct adapter*) ;
 scalar_t__ t3_handle_intr_status (struct adapter*,int ,int,struct intr_info const*,int *) ;

__attribute__((used)) static void mps_intr_handler(struct adapter *adapter)
{
 static const struct intr_info mps_intr_info[] = {
  {0x1ff, "MPS parity error", -1, 1},
  {0}
 };

 if (t3_handle_intr_status(adapter, A_MPS_INT_CAUSE, 0xffffffff,
      mps_intr_info, ((void*)0)))
  t3_fatal_err(adapter);
}
