
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipath_devdata {int dummy; } ;
struct i2c_chain_desc {scalar_t__ eeprom_dev; } ;


 scalar_t__ IPATH_NO_DEV ;
 int READ_CMD ;
 int VERBOSE ;
 int WRITE_CMD ;
 int i2c_startcmd (struct ipath_devdata*,int) ;
 int ipath_cdbg (int ,char*) ;
 int ipath_dbg (char*,...) ;
 int ipath_dev_err (struct ipath_devdata*,char*) ;
 struct i2c_chain_desc* ipath_i2c_type (struct ipath_devdata*) ;
 int rd_byte (struct ipath_devdata*) ;
 int send_ack (struct ipath_devdata*) ;
 int stop_cmd (struct ipath_devdata*) ;
 int wr_byte (struct ipath_devdata*,int) ;

__attribute__((used)) static int ipath_eeprom_internal_read(struct ipath_devdata *dd,
     u8 eeprom_offset, void *buffer, int len)
{
 int ret;
 struct i2c_chain_desc *icd;
 u8 *bp = buffer;

 ret = 1;
 icd = ipath_i2c_type(dd);
 if (!icd)
  goto bail;

 if (icd->eeprom_dev == IPATH_NO_DEV) {

  ipath_cdbg(VERBOSE, "Start command only address\n");
  eeprom_offset = (eeprom_offset << 1) | READ_CMD;
  ret = i2c_startcmd(dd, eeprom_offset);
 } else {

  ipath_cdbg(VERBOSE, "Start command uses devaddr\n");
  if (i2c_startcmd(dd, icd->eeprom_dev | WRITE_CMD)) {
   ipath_dbg("Failed EEPROM startcmd\n");
   stop_cmd(dd);
   ret = 1;
   goto bail;
  }
  ret = wr_byte(dd, eeprom_offset);
  stop_cmd(dd);
  if (ret) {
   ipath_dev_err(dd, "Failed to write EEPROM address\n");
   ret = 1;
   goto bail;
  }
  ret = i2c_startcmd(dd, icd->eeprom_dev | READ_CMD);
 }
 if (ret) {
  ipath_dbg("Failed startcmd for dev %02X\n", icd->eeprom_dev);
  stop_cmd(dd);
  ret = 1;
  goto bail;
 }





 while (len-- > 0) {

  *bp++ = rd_byte(dd);

  if (len)
   send_ack(dd);
 }

 stop_cmd(dd);

 ret = 0;

bail:
 return ret;
}
