
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_6__ {void** offset; void** base; } ;
struct lm93_data {TYPE_3__ block10; int block1; void*** block9; void** block8; void** block5; TYPE_2__* block4; void** block2; TYPE_1__* block7; void** block3; } ;
struct i2c_client {int dev; } ;
struct TYPE_5__ {void* avg; void* cur; } ;
struct TYPE_4__ {void* max; void* min; } ;


 int LM93_REG_FAN (int) ;
 int LM93_REG_FAN_MIN (int) ;
 scalar_t__ LM93_REG_HOST_ERROR_1 ;
 scalar_t__ LM93_REG_IN (int) ;
 scalar_t__ LM93_REG_IN_MAX (int) ;
 scalar_t__ LM93_REG_IN_MIN (int) ;
 scalar_t__ LM93_REG_PROCHOT_AVG (int) ;
 scalar_t__ LM93_REG_PROCHOT_CUR (int) ;
 scalar_t__ LM93_REG_PWM_CTL (int,int) ;
 scalar_t__ LM93_REG_TEMP (int) ;
 scalar_t__ LM93_REG_TEMP_BASE (int) ;
 scalar_t__ LM93_REG_TEMP_OFFSET (int) ;
 int dev_dbg (int *,char*) ;
 void* lm93_read_byte (struct i2c_client*,scalar_t__) ;
 void* lm93_read_word (struct i2c_client*,int ) ;
 int lm93_update_client_common (struct lm93_data*,struct i2c_client*) ;

__attribute__((used)) static void lm93_update_client_min(struct lm93_data *data,
       struct i2c_client *client)
{
 int i,j;
 u8 *ptr;

 dev_dbg(&client->dev,"starting device update (block data disabled)\n");


 for (i = 0; i < 16; i++) {
  data->block3[i] =
   lm93_read_byte(client, LM93_REG_IN(i));
  data->block7[i].min =
   lm93_read_byte(client, LM93_REG_IN_MIN(i));
  data->block7[i].max =
   lm93_read_byte(client, LM93_REG_IN_MAX(i));
 }


 for (i = 0; i < 4; i++) {
  data->block2[i] =
   lm93_read_byte(client, LM93_REG_TEMP(i));
 }


 for (i = 0; i < 2; i++) {
  data->block4[i].cur =
   lm93_read_byte(client, LM93_REG_PROCHOT_CUR(i));
  data->block4[i].avg =
   lm93_read_byte(client, LM93_REG_PROCHOT_AVG(i));
 }


 for (i = 0; i < 4; i++) {
  data->block5[i] =
   lm93_read_word(client, LM93_REG_FAN(i));
  data->block8[i] =
   lm93_read_word(client, LM93_REG_FAN_MIN(i));
 }


 for (i = 0; i < 2; i++) {
  for (j = 0; j < 4; j++) {
   data->block9[i][j] =
    lm93_read_byte(client, LM93_REG_PWM_CTL(i,j));
  }
 }


 for (i = 0, ptr = (u8 *)(&data->block1); i < 8; i++) {
  *(ptr + i) =
   lm93_read_byte(client, LM93_REG_HOST_ERROR_1 + i);
 }


 for (i = 0; i < 4; i++) {
  data->block10.base[i] =
   lm93_read_byte(client, LM93_REG_TEMP_BASE(i));
 }


 for (i = 0; i < 12; i++) {
  data->block10.offset[i] =
   lm93_read_byte(client, LM93_REG_TEMP_OFFSET(i));
 }

 lm93_update_client_common(data, client);
}
