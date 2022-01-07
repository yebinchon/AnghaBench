
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int pdev_dev; } ;


 int MA_INT_CAUSE ;
 int MA_INT_WRAP_STATUS ;
 int MA_PARITY_ERROR_STATUS ;
 int MEM_PERR_INT_CAUSE ;
 int MEM_WRAP_ADDRESS_GET (int) ;
 int MEM_WRAP_CLIENT_NUM_GET (int) ;
 int MEM_WRAP_INT_CAUSE ;
 int dev_alert (int ,char*,int,...) ;
 int t4_fatal_err (struct adapter*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static void ma_intr_handler(struct adapter *adap)
{
 u32 v, status = t4_read_reg(adap, MA_INT_CAUSE);

 if (status & MEM_PERR_INT_CAUSE)
  dev_alert(adap->pdev_dev,
     "MA parity error, parity status %#x\n",
     t4_read_reg(adap, MA_PARITY_ERROR_STATUS));
 if (status & MEM_WRAP_INT_CAUSE) {
  v = t4_read_reg(adap, MA_INT_WRAP_STATUS);
  dev_alert(adap->pdev_dev, "MA address wrap-around error by "
     "client %u to address %#x\n",
     MEM_WRAP_CLIENT_NUM_GET(v),
     MEM_WRAP_ADDRESS_GET(v) << 4);
 }
 t4_write_reg(adap, MA_INT_CAUSE, status);
 t4_fatal_err(adap);
}
