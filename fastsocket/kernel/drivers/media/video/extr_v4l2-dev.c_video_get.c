
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dev; } ;


 int get_device (int *) ;

__attribute__((used)) static inline void video_get(struct video_device *vdev)
{
 get_device(&vdev->dev);
}
