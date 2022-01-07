
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sn9c102_device {int bridge; } ;
typedef enum sn9c102_bridge { ____Placeholder_sn9c102_bridge } sn9c102_bridge ;



enum sn9c102_bridge
sn9c102_get_bridge(struct sn9c102_device* cam)
{
 return cam->bridge;
}
