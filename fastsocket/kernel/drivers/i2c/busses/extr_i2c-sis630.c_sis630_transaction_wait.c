
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev; } ;


 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 int MAX_TIMEOUT ;
 int SIS630_BLOCK_DATA ;
 int SMB_STS ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int msleep (int) ;
 int sis630_read (int ) ;

__attribute__((used)) static int sis630_transaction_wait(struct i2c_adapter *adap, int size)
{
 int temp, result = 0, timeout = 0;


 do {
  msleep(1);
  temp = sis630_read(SMB_STS);

  if (size == SIS630_BLOCK_DATA && (temp & 0x10))
   break;
 } while (!(temp & 0x0e) && (timeout++ < MAX_TIMEOUT));


 if (timeout > MAX_TIMEOUT) {
  dev_dbg(&adap->dev, "SMBus Timeout!\n");
  result = -ETIMEDOUT;
 }

 if (temp & 0x02) {
  dev_dbg(&adap->dev, "Error: Failed bus transaction\n");
  result = -ENXIO;
 }

 if (temp & 0x04) {
  dev_err(&adap->dev, "Bus collision!\n");
  result = -EIO;





 }

 return result;
}
