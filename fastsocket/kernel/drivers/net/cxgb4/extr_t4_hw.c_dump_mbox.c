
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct adapter {int pdev_dev; } ;


 int dev_err (int ,char*,int,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long) ;
 scalar_t__ t4_read_reg64 (struct adapter*,scalar_t__) ;

__attribute__((used)) static void dump_mbox(struct adapter *adap, int mbox, u32 data_reg)
{
 dev_err(adap->pdev_dev,
  "mbox %d: %llx %llx %llx %llx %llx %llx %llx %llx\n", mbox,
  (unsigned long long)t4_read_reg64(adap, data_reg),
  (unsigned long long)t4_read_reg64(adap, data_reg + 8),
  (unsigned long long)t4_read_reg64(adap, data_reg + 16),
  (unsigned long long)t4_read_reg64(adap, data_reg + 24),
  (unsigned long long)t4_read_reg64(adap, data_reg + 32),
  (unsigned long long)t4_read_reg64(adap, data_reg + 40),
  (unsigned long long)t4_read_reg64(adap, data_reg + 48),
  (unsigned long long)t4_read_reg64(adap, data_reg + 56));
}
