
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;


 int info (char*,...) ;
 int m5602_read_bridge (struct sd*,int,unsigned char*) ;

__attribute__((used)) static void m5602_dump_bridge(struct sd *sd)
{
 int i;
 for (i = 0; i < 0x80; i++) {
  unsigned char val = 0;
  m5602_read_bridge(sd, i, &val);
  info("ALi m5602 address 0x%x contains 0x%x", i, val);
 }
 info("Warning: The ALi m5602 webcam probably won't work "
  "until it's power cycled");
}
