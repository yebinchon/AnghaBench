
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipath_devdata {int dummy; } ;


 int VERBOSE ;
 int i2c_line_high ;
 int i2c_line_low ;
 int ipath_cdbg (int ,char*) ;
 int scl_out (struct ipath_devdata*,int ) ;
 int sda_out (struct ipath_devdata*,int ) ;
 int wr_byte (struct ipath_devdata*,int ) ;

__attribute__((used)) static int i2c_startcmd(struct ipath_devdata *dd, u8 offset_dir)
{
 int res;


 sda_out(dd, i2c_line_high);
 scl_out(dd, i2c_line_high);
 sda_out(dd, i2c_line_low);
 scl_out(dd, i2c_line_low);


 res = wr_byte(dd, offset_dir);

 if (res)
  ipath_cdbg(VERBOSE, "No ack to complete start\n");

 return res;
}
