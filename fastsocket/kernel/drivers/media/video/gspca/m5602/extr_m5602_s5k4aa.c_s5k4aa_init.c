
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int ARRAY_SIZE (int**) ;

 int EINVAL ;


 scalar_t__ dump_sensor ;
 int info (char*) ;
 int** init_s5k4aa ;
 int m5602_write_bridge (struct sd*,int,int) ;
 int m5602_write_sensor (struct sd*,int,int*,int) ;
 int s5k4aa_dump_registers (struct sd*) ;

int s5k4aa_init(struct sd *sd)
{
 int i, err = 0;

 for (i = 0; i < ARRAY_SIZE(init_s5k4aa) && !err; i++) {
  u8 data[2] = {0x00, 0x00};

  switch (init_s5k4aa[i][0]) {
  case 130:
   err = m5602_write_bridge(sd,
    init_s5k4aa[i][1],
    init_s5k4aa[i][2]);
   break;

  case 129:
   data[0] = init_s5k4aa[i][2];
   err = m5602_write_sensor(sd,
    init_s5k4aa[i][1], data, 1);
   break;

  case 128:
   data[0] = init_s5k4aa[i][2];
   data[1] = init_s5k4aa[i][3];
   err = m5602_write_sensor(sd,
    init_s5k4aa[i][1], data, 2);
   break;
  default:
   info("Invalid stream command, exiting init");
   return -EINVAL;
  }
 }

 if (dump_sensor)
  s5k4aa_dump_registers(sd);

 return err;
}
