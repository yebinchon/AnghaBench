
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_camera_link {int dummy; } ;
struct soc_camera_device {int dummy; } ;


 int MT9T031_BUS_PARAM ;
 unsigned long soc_camera_apply_sensor_flags (struct soc_camera_link*,int ) ;
 struct soc_camera_link* to_soc_camera_link (struct soc_camera_device*) ;

__attribute__((used)) static unsigned long mt9t031_query_bus_param(struct soc_camera_device *icd)
{
 struct soc_camera_link *icl = to_soc_camera_link(icd);

 return soc_camera_apply_sensor_flags(icl, MT9T031_BUS_PARAM);
}
