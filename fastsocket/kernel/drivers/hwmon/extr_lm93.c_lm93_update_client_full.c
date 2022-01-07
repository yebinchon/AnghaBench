
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm93_data {int block10; int block1; scalar_t__ block9; scalar_t__ block8; scalar_t__ block5; scalar_t__ block4; scalar_t__ block2; scalar_t__ block7; scalar_t__ block3; } ;
struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*) ;
 int lm93_read_block (struct i2c_client*,int,int *) ;
 int lm93_update_client_common (struct lm93_data*,struct i2c_client*) ;

__attribute__((used)) static void lm93_update_client_full(struct lm93_data *data,
        struct i2c_client *client)
{
 dev_dbg(&client->dev,"starting device update (block data enabled)\n");


 lm93_read_block(client, 3, (u8 *)(data->block3));
 lm93_read_block(client, 7, (u8 *)(data->block7));


 lm93_read_block(client, 2, (u8 *)(data->block2));


 lm93_read_block(client, 4, (u8 *)(data->block4));


 lm93_read_block(client, 5, (u8 *)(data->block5));
 lm93_read_block(client, 8, (u8 *)(data->block8));


 lm93_read_block(client, 9, (u8 *)(data->block9));


 lm93_read_block(client, 1, (u8 *)(&data->block1));


 lm93_read_block(client, 10, (u8 *)(&data->block10));

 lm93_update_client_common(data, client);
}
