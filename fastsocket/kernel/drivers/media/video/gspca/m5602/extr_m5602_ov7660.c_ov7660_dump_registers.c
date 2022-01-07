
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int info (char*,...) ;
 int m5602_read_sensor (struct sd*,int,int*,int) ;
 int m5602_write_sensor (struct sd*,int,int*,int) ;

__attribute__((used)) static void ov7660_dump_registers(struct sd *sd)
{
 int address;
 info("Dumping the ov7660 register state");
 for (address = 0; address < 0xa9; address++) {
  u8 value;
  m5602_read_sensor(sd, address, &value, 1);
  info("register 0x%x contains 0x%x",
       address, value);
 }

 info("ov7660 register state dump complete");

 info("Probing for which registers that are read/write");
 for (address = 0; address < 0xff; address++) {
  u8 old_value, ctrl_value;
  u8 test_value[2] = {0xff, 0xff};

  m5602_read_sensor(sd, address, &old_value, 1);
  m5602_write_sensor(sd, address, test_value, 1);
  m5602_read_sensor(sd, address, &ctrl_value, 1);

  if (ctrl_value == test_value[0])
   info("register 0x%x is writeable", address);
  else
   info("register 0x%x is read only", address);


  m5602_write_sensor(sd, address, &old_value, 1);
 }
}
