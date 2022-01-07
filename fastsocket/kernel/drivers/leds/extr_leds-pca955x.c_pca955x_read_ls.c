
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pca955x_led {TYPE_1__* chipdef; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int bits; } ;


 struct pca955x_led* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,scalar_t__) ;
 scalar_t__ pca95xx_num_input_regs (int ) ;

__attribute__((used)) static u8 pca955x_read_ls(struct i2c_client *client, int n)
{
 struct pca955x_led *pca955x = i2c_get_clientdata(client);

 return (u8) i2c_smbus_read_byte_data(client,
  pca95xx_num_input_regs(pca955x->chipdef->bits) + 4 + n);
}
