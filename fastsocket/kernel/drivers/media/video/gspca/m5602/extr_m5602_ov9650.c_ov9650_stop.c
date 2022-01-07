
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int OV9650_COM2 ;
 int OV9650_OUTPUT_DRIVE_2X ;
 int OV9650_SOFT_SLEEP ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

int ov9650_stop(struct sd *sd)
{
 u8 data = OV9650_SOFT_SLEEP | OV9650_OUTPUT_DRIVE_2X;
 return m5602_write_sensor(sd, OV9650_COM2, &data, 1);
}
