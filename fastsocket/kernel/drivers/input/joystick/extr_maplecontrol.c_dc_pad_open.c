
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dc_pad* platform_data; } ;
struct input_dev {TYPE_1__ dev; } ;
struct dc_pad {int mdev; } ;


 int HZ ;
 int MAPLE_FUNC_CONTROLLER ;
 int dc_pad_callback ;
 int maple_getcond_callback (int ,int ,int,int ) ;

__attribute__((used)) static int dc_pad_open(struct input_dev *dev)
{
 struct dc_pad *pad = dev->dev.platform_data;

 maple_getcond_callback(pad->mdev, dc_pad_callback, HZ/20,
  MAPLE_FUNC_CONTROLLER);

 return 0;
}
