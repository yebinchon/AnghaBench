
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_dbg_chip_ident {int dummy; } ;
struct ks0127 {int ident; } ;
struct i2c_client {int dummy; } ;


 struct ks0127* to_ks0127 (struct v4l2_subdev*) ;
 int v4l2_chip_ident_i2c_client (struct i2c_client*,struct v4l2_dbg_chip_ident*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ks0127_g_chip_ident(struct v4l2_subdev *sd, struct v4l2_dbg_chip_ident *chip)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ks0127 *ks = to_ks0127(sd);

 return v4l2_chip_ident_i2c_client(client, chip, ks->ident, 0);
}
