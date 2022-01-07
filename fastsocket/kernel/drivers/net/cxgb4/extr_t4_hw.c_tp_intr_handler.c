
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_info {int member_0; char* member_1; int member_2; int member_3; } ;
struct adapter {int dummy; } ;



 int TP_INT_CAUSE ;
 int t4_fatal_err (struct adapter*) ;
 scalar_t__ t4_handle_intr_status (struct adapter*,int ,struct intr_info const*) ;

__attribute__((used)) static void tp_intr_handler(struct adapter *adapter)
{
 static const struct intr_info tp_intr_info[] = {
  { 0x3fffffff, "TP parity error", -1, 1 },
  { 128, "TP out of Tx pages", -1, 1 },
  { 0 }
 };

 if (t4_handle_intr_status(adapter, TP_INT_CAUSE, tp_intr_info))
  t4_fatal_err(adapter);
}
