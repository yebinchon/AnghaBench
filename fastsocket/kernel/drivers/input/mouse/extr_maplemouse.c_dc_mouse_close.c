
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dev; } ;
struct dc_mouse {int mdev; } ;


 int MAPLE_FUNC_MOUSE ;
 int dc_mouse_callback ;
 struct dc_mouse* maple_get_drvdata (int ) ;
 int maple_getcond_callback (int ,int ,int ,int ) ;
 int to_maple_dev (int *) ;

__attribute__((used)) static void dc_mouse_close(struct input_dev *dev)
{
 struct dc_mouse *mse = maple_get_drvdata(to_maple_dev(&dev->dev));

 maple_getcond_callback(mse->mdev, dc_mouse_callback, 0,
  MAPLE_FUNC_MOUSE);
}
