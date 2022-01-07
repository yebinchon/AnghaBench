
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8775_state {int hdl; } ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct wm8775_state*) ;
 struct wm8775_state* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int wm8775_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct wm8775_state *state = to_state(sd);

 v4l2_device_unregister_subdev(sd);
 v4l2_ctrl_handler_free(&state->hdl);
 kfree(state);
 return 0;
}
