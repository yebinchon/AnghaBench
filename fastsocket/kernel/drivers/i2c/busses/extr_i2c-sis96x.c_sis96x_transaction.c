
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 int MAX_TIMEOUT ;
 int SMB_CNT ;
 int SMB_HOST_CNT ;
 int SMB_STS ;
 int dev_dbg (int *,char*,...) ;
 int msleep (int) ;
 TYPE_1__ sis96x_adapter ;
 int sis96x_read (int ) ;
 int sis96x_write (int ,int) ;

__attribute__((used)) static int sis96x_transaction(int size)
{
 int temp;
 int result = 0;
 int timeout = 0;

 dev_dbg(&sis96x_adapter.dev, "SMBus transaction %d\n", size);


 if (((temp = sis96x_read(SMB_CNT)) & 0x03) != 0x00) {

  dev_dbg(&sis96x_adapter.dev, "SMBus busy (0x%02x). "
   "Resetting...\n", temp);


  sis96x_write(SMB_HOST_CNT, 0x20);


  if (((temp = sis96x_read(SMB_CNT)) & 0x03) != 0x00) {
   dev_dbg(&sis96x_adapter.dev, "Failed (0x%02x)\n", temp);
   return -EBUSY;
  } else {
   dev_dbg(&sis96x_adapter.dev, "Successful\n");
  }
 }


 sis96x_write(SMB_CNT, 0x20);


 temp = sis96x_read(SMB_STS);
 sis96x_write(SMB_STS, temp & 0x1e);


 sis96x_write(SMB_HOST_CNT, 0x10 | (size & 0x07));


 do {
  msleep(1);
  temp = sis96x_read(SMB_STS);
 } while (!(temp & 0x0e) && (timeout++ < MAX_TIMEOUT));


 if (timeout > MAX_TIMEOUT) {
  dev_dbg(&sis96x_adapter.dev, "SMBus Timeout! (0x%02x)\n", temp);
  result = -ETIMEDOUT;
 }


 if (temp & 0x02) {
  dev_dbg(&sis96x_adapter.dev, "Failed bus transaction!\n");
  result = -ENXIO;
 }


 if (temp & 0x04) {
  dev_dbg(&sis96x_adapter.dev, "Bus collision!\n");
  result = -EIO;
 }


 sis96x_write(SMB_STS, temp);
 if ((temp = sis96x_read(SMB_STS))) {
  dev_dbg(&sis96x_adapter.dev, "Failed reset at "
   "end of transaction! (0x%02x)\n", temp);
 }

 return result;
}
