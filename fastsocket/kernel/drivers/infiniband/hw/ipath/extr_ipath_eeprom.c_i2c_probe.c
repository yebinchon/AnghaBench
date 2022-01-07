
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int dummy; } ;


 int READ_CMD ;
 int VERBOSE ;
 int eeprom_reset (struct ipath_devdata*) ;
 int i2c_startcmd (struct ipath_devdata*,int) ;
 int ipath_cdbg (int ,char*,int) ;
 int ipath_dev_err (struct ipath_devdata*,char*,int) ;
 int rd_byte (struct ipath_devdata*) ;
 int stop_cmd (struct ipath_devdata*) ;

__attribute__((used)) static int i2c_probe(struct ipath_devdata *dd, int devaddr)
{
 int ret = 0;

 ret = eeprom_reset(dd);
 if (ret) {
  ipath_dev_err(dd, "Failed reset probing device 0x%02X\n",
         devaddr);
  return ret;
 }




 ret = i2c_startcmd(dd, devaddr | READ_CMD);
 if (ret)
  ipath_cdbg(VERBOSE, "Failed startcmd for device 0x%02X\n",
      devaddr);
 else {





  int data;
  data = rd_byte(dd);
  stop_cmd(dd);
  ipath_cdbg(VERBOSE, "Response from device 0x%02X\n", devaddr);
 }
 return ret;
}
