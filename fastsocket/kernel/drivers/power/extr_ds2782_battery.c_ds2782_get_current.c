
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ds2782_info {TYPE_1__* client; } ;
typedef int s16 ;
struct TYPE_2__ {int dev; } ;


 int DS2782_CURRENT_UNITS ;
 int DS2782_REG_CURRENT_MSB ;
 int DS2782_REG_RSNSP ;
 int ENXIO ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int ds2782_read_reg (struct ds2782_info*,int ,int*) ;
 int ds2782_read_reg16 (struct ds2782_info*,int ,int*) ;

__attribute__((used)) static int ds2782_get_current(struct ds2782_info *info, int *current_uA)
{
 int sense_res;
 int err;
 u8 sense_res_raw;
 s16 raw;





 err = ds2782_read_reg(info, DS2782_REG_RSNSP, &sense_res_raw);
 if (err)
  return err;
 if (sense_res_raw == 0) {
  dev_err(&info->client->dev, "sense resistor value is 0\n");
  return -ENXIO;
 }
 sense_res = 1000 / sense_res_raw;

 dev_dbg(&info->client->dev, "sense resistor = %d milli-ohms\n",
  sense_res);
 err = ds2782_read_reg16(info, DS2782_REG_CURRENT_MSB, &raw);
 if (err)
  return err;
 *current_uA = raw * (DS2782_CURRENT_UNITS / sense_res);
 return 0;
}
