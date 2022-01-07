
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_camera_platform_info {unsigned long bus_param; } ;
struct soc_camera_device {int dummy; } ;


 struct soc_camera_platform_info* get_info (struct soc_camera_device*) ;

__attribute__((used)) static unsigned long
soc_camera_platform_query_bus_param(struct soc_camera_device *icd)
{
 struct soc_camera_platform_info *p = get_info(icd);
 return p->bus_param;
}
