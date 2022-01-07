
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpia_camera_ops {int owner; } ;


 int module_put (int ) ;

__attribute__((used)) static void put_cam(struct cpia_camera_ops* ops)
{
 module_put(ops->owner);
}
