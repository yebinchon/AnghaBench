
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int info (char*,...) ;
 int stv06xx_read_bridge (struct sd*,int,int*) ;
 int stv06xx_write_bridge (struct sd*,int,int) ;

__attribute__((used)) static void stv06xx_dump_bridge(struct sd *sd)
{
 int i;
 u8 data, buf;

 info("Dumping all stv06xx bridge registers");
 for (i = 0x1400; i < 0x160f; i++) {
  stv06xx_read_bridge(sd, i, &data);

  info("Read 0x%x from address 0x%x", data, i);
 }

 info("Testing stv06xx bridge registers for writability");
 for (i = 0x1400; i < 0x160f; i++) {
  stv06xx_read_bridge(sd, i, &data);
  buf = data;

  stv06xx_write_bridge(sd, i, 0xff);
  stv06xx_read_bridge(sd, i, &data);
  if (data == 0xff)
   info("Register 0x%x is read/write", i);
  else if (data != buf)
   info("Register 0x%x is read/write,"
        " but only partially", i);
  else
   info("Register 0x%x is read-only", i);

  stv06xx_write_bridge(sd, i, buf);
 }
}
