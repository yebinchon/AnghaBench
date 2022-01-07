
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_dbg_chip_ident {int dummy; } ;
struct i2c_client {int dummy; } ;
struct bt819 {int ident; } ;


 struct bt819* to_bt819 (struct v4l2_subdev*) ;
 int v4l2_chip_ident_i2c_client (struct i2c_client*,struct v4l2_dbg_chip_ident*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int bt819_g_chip_ident(struct v4l2_subdev *sd, struct v4l2_dbg_chip_ident *chip)
{
 struct bt819 *decoder = to_bt819(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 return v4l2_chip_ident_i2c_client(client, chip, decoder->ident, 0);
}
