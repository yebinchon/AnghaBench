
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct soc_camera_device {int dummy; } ;
struct i2c_client {int dummy; } ;


 int HSP_HI ;
 int HSSL_DVALID ;
 int OUTCTR1 ;
 unsigned long SOCAM_HSYNC_ACTIVE_LOW ;
 unsigned long SOCAM_VSYNC_ACTIVE_LOW ;
 int VSP_HI ;
 int VSSL_VVALID ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 struct v4l2_subdev* soc_camera_to_subdev (struct soc_camera_device*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tw9910_set_bus_param(struct soc_camera_device *icd,
    unsigned long flags)
{
 struct v4l2_subdev *sd = soc_camera_to_subdev(icd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 u8 val = VSSL_VVALID | HSSL_DVALID;







 if (flags & SOCAM_HSYNC_ACTIVE_LOW)
  val |= HSP_HI;

 if (flags & SOCAM_VSYNC_ACTIVE_LOW)
  val |= VSP_HI;

 return i2c_smbus_write_byte_data(client, OUTCTR1, val);
}
