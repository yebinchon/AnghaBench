
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nforce2_smbus {scalar_t__ can_abort; } ;
struct i2c_adapter {int dev; struct nforce2_smbus* algo_data; } ;


 int EIO ;
 int ETIMEDOUT ;
 int MAX_TIMEOUT ;
 int NVIDIA_SMB_STS ;
 unsigned char NVIDIA_SMB_STS_DONE ;
 unsigned char NVIDIA_SMB_STS_STATUS ;
 int dev_dbg (int *,char*,...) ;
 unsigned char inb_p (int ) ;
 int msleep (int) ;
 int nforce2_abort (struct i2c_adapter*) ;

__attribute__((used)) static int nforce2_check_status(struct i2c_adapter *adap)
{
 struct nforce2_smbus *smbus = adap->algo_data;
 int timeout = 0;
 unsigned char temp;

 do {
  msleep(1);
  temp = inb_p(NVIDIA_SMB_STS);
 } while ((!temp) && (timeout++ < MAX_TIMEOUT));

 if (timeout > MAX_TIMEOUT) {
  dev_dbg(&adap->dev, "SMBus Timeout!\n");
  if (smbus->can_abort)
   nforce2_abort(adap);
  return -ETIMEDOUT;
 }
 if (!(temp & NVIDIA_SMB_STS_DONE) || (temp & NVIDIA_SMB_STS_STATUS)) {
  dev_dbg(&adap->dev, "Transaction failed (0x%02x)!\n", temp);
  return -EIO;
 }
 return 0;
}
