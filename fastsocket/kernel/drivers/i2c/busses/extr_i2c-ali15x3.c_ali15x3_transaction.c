
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev; } ;


 int ALI15X3_STS_BUSY ;
 int ALI15X3_STS_COLL ;
 int ALI15X3_STS_DEV ;
 int ALI15X3_STS_DONE ;
 int ALI15X3_STS_ERR ;
 int ALI15X3_STS_TERM ;
 int ALI15X3_T_OUT ;
 int EBUSY ;
 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 int MAX_TIMEOUT ;
 int SMBHSTADD ;
 int SMBHSTCMD ;
 int SMBHSTCNT ;
 int SMBHSTDAT0 ;
 int SMBHSTDAT1 ;
 int SMBHSTSTART ;
 int SMBHSTSTS ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int) ;
 int inb_p (int ) ;
 int msleep (int) ;
 int outb_p (int,int ) ;

__attribute__((used)) static int ali15x3_transaction(struct i2c_adapter *adap)
{
 int temp;
 int result = 0;
 int timeout = 0;

 dev_dbg(&adap->dev, "Transaction (pre): STS=%02x, CNT=%02x, CMD=%02x, "
  "ADD=%02x, DAT0=%02x, DAT1=%02x\n", inb_p(SMBHSTSTS),
  inb_p(SMBHSTCNT), inb_p(SMBHSTCMD), inb_p(SMBHSTADD),
  inb_p(SMBHSTDAT0), inb_p(SMBHSTDAT1));


 temp = inb_p(SMBHSTSTS);



 if (temp & ALI15X3_STS_BUSY) {
  dev_info(&adap->dev, "Resetting entire SMB Bus to "
   "clear busy condition (%02x)\n", temp);
  outb_p(ALI15X3_T_OUT, SMBHSTCNT);
  temp = inb_p(SMBHSTSTS);
 }


 if (temp & (ALI15X3_STS_ERR | ALI15X3_STS_BUSY)) {

  outb_p(0xFF, SMBHSTSTS);
  if ((temp = inb_p(SMBHSTSTS)) &
      (ALI15X3_STS_ERR | ALI15X3_STS_BUSY)) {



   dev_err(&adap->dev, "SMBus reset failed! (0x%02x) - "
    "controller or device on bus is probably hung\n",
    temp);
   return -EBUSY;
  }
 } else {

  if (temp & ALI15X3_STS_DONE) {
   outb_p(temp, SMBHSTSTS);
  }
 }


 outb_p(0xFF, SMBHSTSTART);


 timeout = 0;
 do {
  msleep(1);
  temp = inb_p(SMBHSTSTS);
 } while ((!(temp & (ALI15X3_STS_ERR | ALI15X3_STS_DONE)))
   && (timeout++ < MAX_TIMEOUT));


 if (timeout > MAX_TIMEOUT) {
  result = -ETIMEDOUT;
  dev_err(&adap->dev, "SMBus Timeout!\n");
 }

 if (temp & ALI15X3_STS_TERM) {
  result = -EIO;
  dev_dbg(&adap->dev, "Error: Failed bus transaction\n");
 }







 if (temp & ALI15X3_STS_COLL) {
  result = -ENXIO;
  dev_dbg(&adap->dev,
   "Error: no response or bus collision ADD=%02x\n",
   inb_p(SMBHSTADD));
 }


 if (temp & ALI15X3_STS_DEV) {
  result = -EIO;
  dev_err(&adap->dev, "Error: device error\n");
 }
 dev_dbg(&adap->dev, "Transaction (post): STS=%02x, CNT=%02x, CMD=%02x, "
  "ADD=%02x, DAT0=%02x, DAT1=%02x\n", inb_p(SMBHSTSTS),
  inb_p(SMBHSTCNT), inb_p(SMBHSTCMD), inb_p(SMBHSTADD),
  inb_p(SMBHSTDAT0), inb_p(SMBHSTDAT1));
 return result;
}
