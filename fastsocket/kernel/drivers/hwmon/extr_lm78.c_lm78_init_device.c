
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm78_data {int update_lock; void** fan_min; } ;


 int LM78_REG_CONFIG ;
 int LM78_REG_FAN_MIN (int) ;
 void* lm78_read_value (struct lm78_data*,int ) ;
 int lm78_write_value (struct lm78_data*,int ,int) ;
 int mutex_init (int *) ;

__attribute__((used)) static void lm78_init_device(struct lm78_data *data)
{
 u8 config;
 int i;


 config = lm78_read_value(data, LM78_REG_CONFIG);
 if ((config & 0x09) != 0x01)
  lm78_write_value(data, LM78_REG_CONFIG,
     (config & 0xf7) | 0x01);


 for (i = 0; i < 3; i++) {
  data->fan_min[i] = lm78_read_value(data,
     LM78_REG_FAN_MIN(i));
 }

 mutex_init(&data->update_lock);
}
