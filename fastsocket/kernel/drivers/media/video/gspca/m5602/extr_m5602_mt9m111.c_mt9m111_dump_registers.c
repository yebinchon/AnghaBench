
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int MT9M111_CAMERA_CONTROL ;
 int MT9M111_COLORPIPE ;
 int MT9M111_PAGE_MAP ;
 int MT9M111_SENSOR_CORE ;
 int info (char*,...) ;
 int m5602_read_sensor (struct sd*,int,int*,int) ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static void mt9m111_dump_registers(struct sd *sd)
{
 u8 address, value[2] = {0x00, 0x00};

 info("Dumping the mt9m111 register state");

 info("Dumping the mt9m111 sensor core registers");
 value[1] = MT9M111_SENSOR_CORE;
 m5602_write_sensor(sd, MT9M111_PAGE_MAP, value, 2);
 for (address = 0; address < 0xff; address++) {
  m5602_read_sensor(sd, address, value, 2);
  info("register 0x%x contains 0x%x%x",
       address, value[0], value[1]);
 }

 info("Dumping the mt9m111 color pipeline registers");
 value[1] = MT9M111_COLORPIPE;
 m5602_write_sensor(sd, MT9M111_PAGE_MAP, value, 2);
 for (address = 0; address < 0xff; address++) {
  m5602_read_sensor(sd, address, value, 2);
  info("register 0x%x contains 0x%x%x",
       address, value[0], value[1]);
 }

 info("Dumping the mt9m111 camera control registers");
 value[1] = MT9M111_CAMERA_CONTROL;
 m5602_write_sensor(sd, MT9M111_PAGE_MAP, value, 2);
 for (address = 0; address < 0xff; address++) {
  m5602_read_sensor(sd, address, value, 2);
  info("register 0x%x contains 0x%x%x",
       address, value[0], value[1]);
 }

 info("mt9m111 register state dump complete");
}
