
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_info {int member_0; char* member_1; int member_2; int member_3; } ;
struct adapter {int dummy; } ;


 int ULP_RX_INT_CAUSE ;
 int t4_fatal_err (struct adapter*) ;
 scalar_t__ t4_handle_intr_status (struct adapter*,int ,struct intr_info const*) ;

__attribute__((used)) static void ulprx_intr_handler(struct adapter *adapter)
{
 static const struct intr_info ulprx_intr_info[] = {
  { 0x1800000, "ULPRX context error", -1, 1 },
  { 0x7fffff, "ULPRX parity error", -1, 1 },
  { 0 }
 };

 if (t4_handle_intr_status(adapter, ULP_RX_INT_CAUSE, ulprx_intr_info))
  t4_fatal_err(adapter);
}
