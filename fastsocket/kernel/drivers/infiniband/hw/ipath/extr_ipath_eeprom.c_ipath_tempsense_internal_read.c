
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipath_devdata {int dummy; } ;
struct i2c_chain_desc {int temp_dev; } ;


 int ENOENT ;
 int ENXIO ;
 int IPATH_NO_DEV ;
 int READ_CMD ;
 int WRITE_CMD ;
 scalar_t__ i2c_startcmd (struct ipath_devdata*,int) ;
 int ipath_dbg (char*) ;
 int ipath_dev_err (struct ipath_devdata*,char*,int ) ;
 struct i2c_chain_desc* ipath_i2c_type (struct ipath_devdata*) ;
 int rd_byte (struct ipath_devdata*) ;
 int stop_cmd (struct ipath_devdata*) ;
 int wr_byte (struct ipath_devdata*,int ) ;

__attribute__((used)) static int ipath_tempsense_internal_read(struct ipath_devdata *dd, u8 regnum)
{
 int ret;
 struct i2c_chain_desc *icd;

 ret = -ENOENT;

 icd = ipath_i2c_type(dd);
 if (!icd)
  goto bail;

 if (icd->temp_dev == IPATH_NO_DEV) {

  ret = -ENXIO;
  goto bail;
 }

 if (i2c_startcmd(dd, icd->temp_dev | WRITE_CMD)) {
  ipath_dbg("Failed tempsense startcmd\n");
  stop_cmd(dd);
  ret = -ENXIO;
  goto bail;
 }
 ret = wr_byte(dd, regnum);
 stop_cmd(dd);
 if (ret) {
  ipath_dev_err(dd, "Failed tempsense WR command %02X\n",
         regnum);
  ret = -ENXIO;
  goto bail;
 }
 if (i2c_startcmd(dd, icd->temp_dev | READ_CMD)) {
  ipath_dbg("Failed tempsense RD startcmd\n");
  stop_cmd(dd);
  ret = -ENXIO;
  goto bail;
 }



 ret = rd_byte(dd);
 stop_cmd(dd);

bail:
 return ret;
}
