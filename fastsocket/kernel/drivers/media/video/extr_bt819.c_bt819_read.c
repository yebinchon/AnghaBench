
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct bt819 {int sd; } ;


 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static inline int bt819_read(struct bt819 *decoder, u8 reg)
{
 struct i2c_client *client = v4l2_get_subdevdata(&decoder->sd);

 return i2c_smbus_read_byte_data(client, reg);
}
