
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_camera_device {int dummy; } ;
struct mt9m111 {scalar_t__ powered; } ;
struct i2c_client {int dummy; } ;


 int mt9m111_enable (struct i2c_client*) ;
 int mt9m111_reset (struct i2c_client*) ;
 int mt9m111_restore_state (struct i2c_client*) ;
 struct i2c_client* to_i2c_client (int ) ;
 struct mt9m111* to_mt9m111 (struct i2c_client*) ;
 int to_soc_camera_control (struct soc_camera_device*) ;

__attribute__((used)) static int mt9m111_resume(struct soc_camera_device *icd)
{
 struct i2c_client *client = to_i2c_client(to_soc_camera_control(icd));
 struct mt9m111 *mt9m111 = to_mt9m111(client);
 int ret = 0;

 if (mt9m111->powered) {
  ret = mt9m111_enable(client);
  if (!ret)
   ret = mt9m111_reset(client);
  if (!ret)
   ret = mt9m111_restore_state(client);
 }
 return ret;
}
