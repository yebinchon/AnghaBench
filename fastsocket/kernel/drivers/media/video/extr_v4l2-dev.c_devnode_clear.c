
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int vfl_type; int num; } ;


 int clear_bit (int ,int ) ;
 int devnode_bits (int ) ;

__attribute__((used)) static inline void devnode_clear(struct video_device *vdev)
{
 clear_bit(vdev->num, devnode_bits(vdev->vfl_type));
}
