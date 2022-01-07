
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
 int i2c_startcmd (struct ipath_devdata*,int) ;
 int ipath_dbg (char*) ;
 int ipath_dev_err (struct ipath_devdata*,char*,int ) ;
 struct i2c_chain_desc* ipath_i2c_type (struct ipath_devdata*) ;
 int stop_cmd (struct ipath_devdata*) ;
 int wr_byte (struct ipath_devdata*,int ) ;

__attribute__((used)) static int ipath_tempsense_internal_write(struct ipath_devdata *dd,
       u8 regnum, u8 data)
{
 int ret = -ENOENT;
 struct i2c_chain_desc *icd;

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
 if (ret) {
  stop_cmd(dd);
  ipath_dev_err(dd, "Failed to write tempsense command %02X\n",
         regnum);
  ret = -ENXIO;
  goto bail;
 }
 ret = wr_byte(dd, data);
 stop_cmd(dd);
 ret = i2c_startcmd(dd, icd->temp_dev | READ_CMD);
 if (ret) {
  ipath_dev_err(dd, "Failed tempsense data wrt to %02X\n",
         regnum);
  ret = -ENXIO;
 }

bail:
 return ret;
}
