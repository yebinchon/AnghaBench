
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_dbg_chip_ident {int revision; int ident; } ;
struct tw9910_priv {int revision; } ;
struct i2c_client {int dummy; } ;


 int V4L2_IDENT_TW9910 ;
 struct tw9910_priv* to_tw9910 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tw9910_g_chip_ident(struct v4l2_subdev *sd,
          struct v4l2_dbg_chip_ident *id)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct tw9910_priv *priv = to_tw9910(client);

 id->ident = V4L2_IDENT_TW9910;
 id->revision = priv->revision;

 return 0;
}
