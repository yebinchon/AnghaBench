
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smsc911x_data {int dummy; } ;


 int EIO ;
 int HW ;
 int MAC_CSR_CMD ;
 int MAC_CSR_CMD_CSR_BUSY_ ;
 int SMSC_ASSERT_MAC_LOCK (struct smsc911x_data*) ;
 int SMSC_WARNING (int ,char*,int) ;
 int smsc911x_reg_read (struct smsc911x_data*,int ) ;

__attribute__((used)) static int smsc911x_mac_complete(struct smsc911x_data *pdata)
{
 int i;
 u32 val;

 SMSC_ASSERT_MAC_LOCK(pdata);

 for (i = 0; i < 40; i++) {
  val = smsc911x_reg_read(pdata, MAC_CSR_CMD);
  if (!(val & MAC_CSR_CMD_CSR_BUSY_))
   return 0;
 }
 SMSC_WARNING(HW, "Timed out waiting for MAC not BUSY. "
  "MAC_CSR_CMD: 0x%08X", val);
 return -EIO;
}
