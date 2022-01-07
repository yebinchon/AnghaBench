
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {int dev; } ;


 int ALI1563_MAX_TIMEOUT ;
 int EBUSY ;
 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 int HST_CNTL1_TIMEOUT ;
 int HST_CNTL2_KILL ;
 int HST_CNTL2_QUICK ;
 int HST_CNTL2_START ;
 int HST_STS_BAD ;
 int HST_STS_BUSERR ;
 int HST_STS_BUSY ;
 int HST_STS_DEVERR ;
 int HST_STS_FAIL ;
 int SMB_HST_ADD ;
 int SMB_HST_CMD ;
 int SMB_HST_CNTL1 ;
 int SMB_HST_CNTL2 ;
 int SMB_HST_DAT0 ;
 int SMB_HST_DAT1 ;
 int SMB_HST_STS ;
 int dev_dbg (int *,char*,int,int,int,int,int,int,int) ;
 int dev_err (int *,char*) ;
 int inb_p (int ) ;
 int msleep (int) ;
 int outb_p (int,int ) ;

__attribute__((used)) static int ali1563_transaction(struct i2c_adapter * a, int size)
{
 u32 data;
 int timeout;
 int status = -EIO;

 dev_dbg(&a->dev, "Transaction (pre): STS=%02x, CNTL1=%02x, "
  "CNTL2=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\n",
  inb_p(SMB_HST_STS), inb_p(SMB_HST_CNTL1), inb_p(SMB_HST_CNTL2),
  inb_p(SMB_HST_CMD), inb_p(SMB_HST_ADD), inb_p(SMB_HST_DAT0),
  inb_p(SMB_HST_DAT1));

 data = inb_p(SMB_HST_STS);
 if (data & HST_STS_BAD) {
  dev_err(&a->dev, "ali1563: Trying to reset busy device\n");
  outb_p(data | HST_STS_BAD,SMB_HST_STS);
  data = inb_p(SMB_HST_STS);
  if (data & HST_STS_BAD)
   return -EBUSY;
 }
 outb_p(inb_p(SMB_HST_CNTL2) | HST_CNTL2_START, SMB_HST_CNTL2);

 timeout = ALI1563_MAX_TIMEOUT;
 do
  msleep(1);
 while (((data = inb_p(SMB_HST_STS)) & HST_STS_BUSY) && --timeout);

 dev_dbg(&a->dev, "Transaction (post): STS=%02x, CNTL1=%02x, "
  "CNTL2=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\n",
  inb_p(SMB_HST_STS), inb_p(SMB_HST_CNTL1), inb_p(SMB_HST_CNTL2),
  inb_p(SMB_HST_CMD), inb_p(SMB_HST_ADD), inb_p(SMB_HST_DAT0),
  inb_p(SMB_HST_DAT1));

 if (timeout && !(data & HST_STS_BAD))
  return 0;

 if (!timeout) {
  dev_err(&a->dev, "Timeout - Trying to KILL transaction!\n");

  outb_p(HST_CNTL2_KILL,SMB_HST_CNTL2);
  data = inb_p(SMB_HST_STS);
  status = -ETIMEDOUT;
  }


 if (data & HST_STS_DEVERR) {
  if (size != HST_CNTL2_QUICK)
   dev_err(&a->dev, "Device error!\n");
  status = -ENXIO;
 }

 if (data & HST_STS_BUSERR) {
  dev_err(&a->dev, "Bus collision!\n");

  outb_p(HST_CNTL1_TIMEOUT,SMB_HST_CNTL1);
 }

 if (data & HST_STS_FAIL) {
  dev_err(&a->dev, "Cleaning fail after KILL!\n");
  outb_p(0x0,SMB_HST_CNTL2);
 }

 return status;
}
