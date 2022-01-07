
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intr_info {int member_0; char* member_1; int member_2; int member_3; int const member_4; } ;
struct adapter {int pdev_dev; } ;
 int SGE_INT_CAUSE1 ;
 int SGE_INT_CAUSE2 ;
 int SGE_INT_CAUSE3 ;
 int dev_alert (int ,char*,unsigned long long) ;


 int t4_fatal_err (struct adapter*) ;
 scalar_t__ t4_handle_intr_status (struct adapter*,int ,struct intr_info const*) ;
 scalar_t__ t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static void sge_intr_handler(struct adapter *adapter)
{
 u64 v;

 static const struct intr_info sge_intr_info[] = {
  { 140,
    "SGE received CPL exceeding IQE size", -1, 1 },
  { 134,
    "SGE GTS CIDX increment too large", -1, 0 },
  { 139, "SGE received 0-length CPL", -1, 0 },
  { 132, ((void*)0), -1, 0, 128 },
  { 133, ((void*)0), -1, 0, 128 },
  { 131, ((void*)0), -1, 0, 129 },
  { 137 | 138,
    "SGE IQID > 1023 received CPL for FL", -1, 0 },
  { 141, "SGE DBP 3 pidx increment too large", -1,
    0 },
  { 142, "SGE DBP 2 pidx increment too large", -1,
    0 },
  { 143, "SGE DBP 1 pidx increment too large", -1,
    0 },
  { 144, "SGE DBP 0 pidx increment too large", -1,
    0 },
  { 135,
    "SGE too many priority ingress contexts", -1, 0 },
  { 136,
    "SGE too many priority egress contexts", -1, 0 },
  { 130, "SGE illegal ingress QID", -1, 0 },
  { 145, "SGE illegal egress QID", -1, 0 },
  { 0 }
 };

 v = (u64)t4_read_reg(adapter, SGE_INT_CAUSE1) |
  ((u64)t4_read_reg(adapter, SGE_INT_CAUSE2) << 32);
 if (v) {
  dev_alert(adapter->pdev_dev, "SGE parity error (%#llx)\n",
    (unsigned long long)v);
  t4_write_reg(adapter, SGE_INT_CAUSE1, v);
  t4_write_reg(adapter, SGE_INT_CAUSE2, v >> 32);
 }

 if (t4_handle_intr_status(adapter, SGE_INT_CAUSE3, sge_intr_info) ||
     v != 0)
  t4_fatal_err(adapter);
}
