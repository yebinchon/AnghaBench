
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int pdev_dev; } ;


 int SF_ERASE_SECTOR ;
 int SF_OP ;
 int SF_WR_ENABLE ;
 int dev_err (int ,char*,int,int) ;
 int flash_wait_op (struct adapter*,int,int) ;
 int sf1_write (struct adapter*,int,int ,int,int) ;
 int t4_write_reg (struct adapter*,int ,int ) ;

__attribute__((used)) static int t4_flash_erase_sectors(struct adapter *adapter, int start, int end)
{
 int ret = 0;

 while (start <= end) {
  if ((ret = sf1_write(adapter, 1, 0, 1, SF_WR_ENABLE)) != 0 ||
      (ret = sf1_write(adapter, 4, 0, 1,
         SF_ERASE_SECTOR | (start << 8))) != 0 ||
      (ret = flash_wait_op(adapter, 14, 500)) != 0) {
   dev_err(adapter->pdev_dev,
    "erase of flash sector %d failed, error %d\n",
    start, ret);
   break;
  }
  start++;
 }
 t4_write_reg(adapter, SF_OP, 0);
 return ret;
}
